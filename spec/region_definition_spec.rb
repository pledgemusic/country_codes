require 'spec_helper'

describe RegionDefinition do
  describe RegionDefinition::Segment do
    [
      [
        'Sorts countries and adds operator',
        'US, CA', '+', 'US, CA', %w(CA US)
      ],
      [
        'Addition with codes',
        '+ US, CA', '+', 'US, CA', %w(CA US)
      ],
      [
        'Country names stripping space in list',
        ' United States,  Greenland', '+', 'United States, Greenland', %w(GL US)
      ],
      [
        'Subtraction with Region with stripping',
        '- North America ', '-', 'North America', %w(CA GL PM US)
      ]
    ].each do |label, segment, operator, names, countries|
      describe %(#{label} ("#{segment}" => #{operator} #{countries.inspect})) do
        subject { described_class.new(segment) }

        it '#names' do
          expect(subject.names).to eq(names)
        end

        it '#operator' do
          expect(subject.operator).to eq(operator)
        end

        it '#to_s' do
          expect(subject.to_s).to eq("#{operator} #{names}")
        end

        it '#countries' do
          expect(subject.countries).to eq(countries)
        end
      end
    end
  end

  [
    ['North America - Greenland', %w(CA PM US)],
    ['North America - Greenland + GL', %w(CA GL PM US)],
    ['North America - PM,GL + MX', %w(CA MX US)],
    ['US + North America - Greenland + GL', %w(CA GL PM US)],
    ['US + North America - Greenland -PM', %w(CA US)]
  ].each do |definition, countries|
    describe definition.to_s do
      subject { described_class.new(definition) }

      # it 'puts' do
      #   puts subject.to_a.map {|x| x.countries }.flatten.inspect
      # end

      it '#to_s' do
        expect(subject.to_s).to eq(definition)
      end

      it '#countries' do
        expect(subject.countries).to eq(countries)
      end
    end
  end
end