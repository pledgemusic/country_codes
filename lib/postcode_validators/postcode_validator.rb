# postcode = Postcode.new('123 ')
# postcode.valid? => true
# postcode.to_s => '123'
# postcode.trunk => Postcode.trunk with pct.days, pct.region_id etc
class PostcodeValidator
  REGEXP = {
    'BE' => /^([1-9]{1}[0-9]{1})([0-9]{2}) ?([A-Z]{2})$/,
    'CA' => /^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$/,
    'DE' => /^([1-9]{1}[0-9]{1})([0-9]{2}) ?([A-Z]{2})$/,
    'GB' => /^([A-PR-UWYZ0-9][A-HK-Y0-9][ABCDEFGHJKSTUW0-9]?[ABEHMNPRVWXY0-9]?) {0,1}([0-9][ABD-HJLNO-UW-Z]{2}|GIR 0AA)$/,
    'JP' => /^[0-9]{3}\-[0-9]{4}*/,
    'US' => /^\d{5}([\-]\d{4})?$/
  }

  # need to add globalized invalid error message to add to Address.

  attr_reader :country

  @regexp = //

  def self.regexp
    @regexp
  end

  def regexp
    self.class.regexp
  end

  def self.new(postcode, country = nil)
    if country
      begin
        return "#{country}PostcodeValidator".constantize.new(postcode)
      rescue NameError
        postcode = super(postcode, country)
      end
    else
      super(postcode)
    end
  end

  def initialize(postcode, country = nil)
    if self.class == PostcodeValidator && country.nil?
      fail 'Postcode requires a country'
    else
      @country = country || self.class.to_s[0..1]
    end
    @postcode = clean(postcode)
  end

  def to_s(_format = nil)
    @postcode
  end

  def to_a
    @parts || [to_s]
  end

  # Validation

  def valid?
    @postcode =~ regexp ? true : false
  end

  def invalid?
    !valid?
  end

  private

  def clean(postcode)
    symbols_to_numbers(postcode.to_s.strip).upcase
  end

  # convert ! -> 1, @ -> 2, etc
  def symbols_to_numbers(postcode)
    s = postcode.dup
    ')!@#$%^&*('.split('').each_with_index { |c, i| s.gsub!(c, i.to_s) }
    s
  end
end

require 'postcode_validators/be_postcode_validator'
require 'postcode_validators/ca_postcode_validator'
require 'postcode_validators/de_postcode_validator'
require 'postcode_validators/gb_postcode_validator'
require 'postcode_validators/jp_postcode_validator'
require 'postcode_validators/nl_postcode_validator'
require 'postcode_validators/us_postcode_validator'

