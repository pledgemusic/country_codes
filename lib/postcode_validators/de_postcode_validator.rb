# Germany
class DEPostcodeValidator < PostcodeValidator
  # "01234" or "123456" or "BFPO 1234"
  @regexp = /^([0-9]{1}[0-9]{1})([0-9]{3,4})|(BFPO[\s]{0,1}[0-9]*)$/

  def initialize(postcode)
    @country = 'DE'
    @postcode = clean(postcode)

    if match = @postcode.gsub(' ', '').match(regexp)
      @parts = match.to_a[1..-1]
      @postcode = @parts.join('')
    end
  end
end
