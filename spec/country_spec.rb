require 'spec_helper'

describe Country do
  describe 'initializer mappings' do
    context 'valid mappings' do
      {
        'US' => ['US', 'us', 'Us', 'UsA', 'United States'],
        'GB' => ['GB', 'gb', 'Great Britain', 'UK', 'United kingdom', 'England']
      }.each do |country, strings|
        strings.each do |string|
          it "#{string} -> #{country}" do
            expect(Country[string].try(:alpha2)).to eq(country)
          end
        end
      end
    end

    context 'valid mappings' do
      ['?'].each do |key|
        it "#{key} -> nil" do
          expect(Country[key]).to be_nil
        end
      end
    end
  end

  describe '#currency' do
    {
      'US' => 'USD',
      'GB' => 'GBP',
      'FR' => 'EUR',
      'AU' => 'AUD',
      'CA' => 'CAD',
      'JP' => 'JPY'
    }.each do |country, currency|
      it "#{country.inspect} -> #{currency}" do
        expect(Country[country].currency).to eq(currency)
      end
    end
  end
end
