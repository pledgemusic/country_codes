# United States
class USPostcodeValidator < PostcodeValidator
  @regexp = /^(\d{5})([\-]\d{4})?$/
end
