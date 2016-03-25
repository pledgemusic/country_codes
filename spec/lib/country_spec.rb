require 'spec_helper'

describe Country do
  describe 'constants' do
    it 'COUNTRY_CODES_BY_CODE' do
      expect(Country::COUNTRY_CODES_BY_CODE['FR']).to eq('FR')
    end

    it 'COUNTRY_CODES_BY_NAME' do
      expect(Country::COUNTRY_CODES_BY_NAME['France']).to eq('FR')
    end

    it 'COUNTRY_NAMES_BY_CODE' do
      expect(Country::COUNTRY_NAMES_BY_CODE['FR']).to eq('France')
    end

    it 'COUNTRIES' do
      expect(Country::COUNTRIES['FR'][:name]).to eq('France')
    end

    it 'REGIONS' do
      countries = Country::REGIONS.values.flatten
      expect(Country::COUNTRY_CODES - countries).to eq(['AQ'])
      expect(countries.length).to eq(countries.uniq.length)
    end

    it 'CONTINENTS has no duplicates' do
      countries = Country::CONTINENTS.reject { |c, v| c =~ /Royal/ }.values.flatten
      expect(Country::COUNTRY_CODES - countries).to eq(['AQ'])
      expect(countries.length).to eq(countries.uniq.length)
    end

    it 'LOOKUP_COUNTRY_CODES' do
      expect(Country::LOOKUP_COUNTRY_CODES['FRANCE']).to eq(['FR'])
      expect(Country::LOOKUP_COUNTRY_CODES['FR']).to eq(['FR'])
    end
  end

  describe '.compress_list' do
    [
      [
        'Extract North America',
        described_class::REGIONS['North America'] + ['FR'],
        ['FR', 'NORTH AMERICA']
      ]
    ].each do |label, input, output|
      it label do
        expect(described_class.compress_list(input)).to eq(output)
      end
    end
  end

  describe '.[]' do
    context 'valid mappings' do
      {
        'US' => ['US', 'us', 'Us', 'United States'],
        'GB' => ['GB', 'gb', 'Great Britain', 'UK', 'United kingdom', 'England'],
        'BQ' => ['Bonaire, Saint Eustatius and Saba']
      }.each do |code, strings|
        strings.each do |string|
          it "#{string} -> #{code}" do
            country = described_class[string]
            if country
              expect(country.code).to eq(code)
            else
              fail "country not found for #{string.inspect}"
            end
          end
        end
      end
    end

    context 'invalid mappings' do
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
    }.each do |code, currency|
      it "#{code.inspect} -> #{currency}" do
        expect(described_class[code].currency).to eq(currency)
      end
    end
  end
end
