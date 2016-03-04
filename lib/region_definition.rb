# "North America - Greenland + South East Asia"
require 'csv'
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
      operator, names = self.class.check_input(input).scan(/([\+\-]){0,1}(.*)/m).first
      @operator = operator.to_s.strip
      @operator = '+' if @operator.empty?
      @custom_regions = custom_regions.map { |k, v| [k.to_s.upcase, v] }.to_h
      @names = names.to_s.strip
    end

    attr_reader :names, :operator

    def to_s
      "#{operator} #{names}"
    end

    def countries
      @countries ||= names_to_array(names).map do |name|
        look_up_list[name.strip.upcase]
      end.flatten.compact.uniq.sort
    end

    def look_up_list
      @look_up_list ||= Country::LOOKUP_COUNTRY_CODES.merge(@custom_regions)
    end

    private

    def names_to_array(names)
      csv = names.gsub("\n", ',').gsub(', "', ',"')
      CSV.parse(csv).flatten
    end
  end

  def initialize(string, custom_regions = {})
    @string = string
    @custom_regions = custom_regions
  end

  attr_reader :string, :custom_regions

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
    @to_a ||= string_matches.map { |segment| Segment.new(segment, custom_regions) }
  end

  private

  def string_matches
    to_s.scan(/([\+\-]{0,1})([^\+\-]*)/).reject { |match| match == ['', ''] }
  end
end