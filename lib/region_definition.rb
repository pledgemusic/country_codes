# "North America - Greenland + South East Asia"
class RegionDefinition
  # A segment of the definition, eg '+ South East Asia' or 'US, CA'
  class Segment
    def self.check_input(input)
      input = input.join('') if input.is_a?(Array)
      fail "Too many operators #{input}" if input.scan(/\+|\-/).length > 1
      fail "Operator in wrong position: #{input.inspect}" if (input.index(/\+|\-/) || 0) > 0
      input
    end

    def initialize(input, custom_regions = {})
      operator, names = self.class.check_input(input).scan(/([\+\-]){0,1}(.*)/).first
      @operator = operator.to_s.strip
      @operator = '+' if @operator.empty?
      @custom_regions = custom_regions.map { |k, v| [k.to_s.upcase, v] }.to_h
      @names = names.to_s.split(',').map(&:strip).join(', ')
    end

    attr_reader :names, :operator

    def to_s
      "#{operator} #{names}"
    end

    def countries
      @countries ||= names.split(', ').map do |name|
        regions[name.upcase]
      end.flatten.compact.uniq.sort
    end

    def regions
      @regions ||= Country::NAMES_TO_COUNTRIES.merge(@custom_regions)
    end
  end

  def initialize(string)
    @string = string
  end

  def to_s
    @string.to_s
  end

  def countries
    @countries ||= begin
      list = []
      to_a.each { |segment| list = list.send(segment.operator, segment.countries) }
      list
    end.uniq.sort
  end

  def to_a
    @to_a ||= string_matches.map { |segment| Segment.new(segment) }
  end

  private

  def string_matches
    to_s.scan(/([\+\-]{0,1})([^\+\-]*)/).reject { |match| match == ['', ''] }
  end
end