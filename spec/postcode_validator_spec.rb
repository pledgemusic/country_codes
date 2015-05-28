require 'spec_helper'

describe PostcodeValidator do
  it 'delegates' do
    expect(described_class.new('GB', 'NW10 5SR')).to be_valid
  end
end
