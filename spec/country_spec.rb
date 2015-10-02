require 'spec_helper'

describe Country do
  describe 'initializer mappings' do
    context 'valid mappings' do
      {
        'US' => ['US', 'us', 'Us', 'UsA', 'United States'],
        'GB' => ['GB', 'gb', 'Great Britain', 'UK', 'United kingdom', 'England'],
        'LA' => ["Lao People's Democratic Republic"],
        'VA' => ['Holy See (Vatican City State)']
      }.each do |code, strings|
        strings.each do |string|
          it "#{string} -> #{code}" do
            country = described_class[string]
            if country
              expect(country.alpha2).to eq(code)
            else
              fail "country not found for #{string.inspect}"
            end
          end
        end
      end
    end

    context 'valid mappings' do
      ['?'].each do |key|
        it "#{key} -> nil" do
          expect(described_class[key]).to be_nil
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
        expect(described_class[country].currency).to eq(currency)
      end
    end
  end
end
