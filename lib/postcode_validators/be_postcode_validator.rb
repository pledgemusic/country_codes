# Belgium (copied from NL)
class BEPostcodeValidator < PostcodeValidator
  @regexp = /^([1-9]{1}[0-9]{1})([0-9]{2})$/ # "1234AB" or "1234 AB"

  #
  # Instance Methods
  #

  def initialize(postcode)
    @country = 'BE'
    @postcode = clean(postcode)
    @postcode = @postcode.gsub(' ', '')
    @parts = [@postcode]
  end
end
