# Netherlands
class NLPostcodeValidator < PostcodeValidator
  @regexp = /^([1-9]{1}[0-9]{1})([0-9]{2}) ?([A-Z]{2})$/ # "1234AB" or "1234 AB"

  def initialize(postcode)
    @country = 'NL'
    @postcode = clean(postcode)

    if match = @postcode.gsub(' ', '').match(regexp)
      @parts = match.to_a[1..-1]
      @postcode = @parts.join('')
    end
  end
end
