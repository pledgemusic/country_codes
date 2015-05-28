# Japan
class JPPostcodeValidator < PostcodeValidator
  @regexp = /^[0-9]{3}\-[0-9]{4}*/

  private

  def clean(postcode)
    postcode = super(postcode)

    # 1234567 -> 123-4567
    postcode = postcode[0..2] + '-' + postcode[3..6] if postcode =~ /^[0-9]{7}$/

    postcode
  end
end
