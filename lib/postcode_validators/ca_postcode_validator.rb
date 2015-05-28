# Canada
class CAPostcodeValidator < PostcodeValidator
  @regexp = /^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$/

  private

  def clean(postcode)
    super(postcode).gsub('-', ' ').strip.upcase
  end
end
