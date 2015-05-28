# Great Britain
class GBPostcodeValidator < PostcodeValidator
  @regexp = /^([A-PR-UWYZ0-9][A-HK-Y0-9][ABCDEFGHJKSTUW0-9]?[ABEHMNPRVWXY0-9]?) {0,1}([0-9][ABD-HJLNO-UW-Z]{2}|GIR 0AA)$/

  attr_reader :outward, :inward

  def initialize(postcode)
    @country = 'GB'
    @postcode = clean(postcode)

    if match = @postcode.gsub(' ', '').match(regexp)
      @parts = match.to_a[1..-1]
      @outward = @parts.first
      @inward = @parts.last
      @postcode = "#{@outward} #{@inward}"
    end
  end

  def outward
    @outward || begin
      to_s.scan(/^([A-PR-UWYZ0-9][A-HK-Y0-9][ABCDEFGHJKSTUW0-9]?[ABEHMNPRVWXY0-9]?)/).flatten.first
    end
  end

  private

  def clean(postcode)
    s = super(postcode).strip.upcase
    s.gsub!('-', ' ')
    s.sub!(/O([A-Z]{2}$)/, '0\1') # OAB -> 0AB
    s
  end
end
