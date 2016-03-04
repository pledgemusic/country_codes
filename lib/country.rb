# Country lookup information
class Country
  # rubocop:disable Metrics/LineLength

  COUNTRY_NAMES_BY_CODE = {
   'AD' => 'Andorra',
   'AE' => 'United Arab Emirates',
   'AF' => 'Afghanistan',
   'AG' => 'Antigua and Barbuda',
   'AI' => 'Anguilla',
   'AL' => 'Albania',
   'AM' => 'Armenia',
   'AO' => 'Angola',
   'AQ' => 'Antarctica',
   'AR' => 'Argentina',
   'AS' => 'American Samoa',
   'AT' => 'Austria',
   'AU' => 'Australia',
   'AW' => 'Aruba',
   'AX' => 'Aland Islands',
   'AZ' => 'Azerbaijan',
   'BA' => 'Bosnia and Herzegovina',
   'BB' => 'Barbados',
   'BD' => 'Bangladesh',
   'BE' => 'Belgium',
   'BF' => 'Burkina Faso',
   'BG' => 'Bulgaria',
   'BH' => 'Bahrain',
   'BI' => 'Burundi',
   'BJ' => 'Benin',
   'BL' => 'Saint Barthelemy',
   'BM' => 'Bermuda',
   'BN' => 'Brunei',
   'BO' => 'Bolivia',
   'BQ' => 'Bonaire, Saint Eustatius and Saba',
   'BR' => 'Brazil',
   'BS' => 'Bahamas',
   'BT' => 'Bhutan',
   'BV' => 'Bouvet Island',
   'BW' => 'Botswana',
   'BY' => 'Belarus',
   'BZ' => 'Belize',
   'CA' => 'Canada',
   'CC' => 'Cocos Islands',
   'CD' => 'Democratic Republic of the Congo',
   'CF' => 'Central African Republic',
   'CG' => 'Republic of the Congo',
   'CH' => 'Switzerland',
   'CI' => 'Ivory Coast',
   'CK' => 'Cook Islands',
   'CL' => 'Chile',
   'CM' => 'Cameroon',
   'CN' => 'China',
   'CO' => 'Colombia',
   'CR' => 'Costa Rica',
   'CU' => 'Cuba',
   'CV' => 'Cape Verde',
   'CW' => 'Curacao',
   'CX' => 'Christmas Island',
   'CY' => 'Cyprus',
   'CZ' => 'Czech Republic',
   'DE' => 'Germany',
   'DJ' => 'Djibouti',
   'DK' => 'Denmark',
   'DM' => 'Dominica',
   'DO' => 'Dominican Republic',
   'DZ' => 'Algeria',
   'EC' => 'Ecuador',
   'EE' => 'Estonia',
   'EG' => 'Egypt',
   'EH' => 'Western Sahara',
   'ER' => 'Eritrea',
   'ES' => 'Spain',
   'ET' => 'Ethiopia',
   'FI' => 'Finland',
   'FJ' => 'Fiji',
   'FK' => 'Falkland Islands',
   'FM' => 'Micronesia',
   'FO' => 'Faroe Islands',
   'FR' => 'France',
   'GA' => 'Gabon',
   'GB' => 'United Kingdom',
   'GD' => 'Grenada',
   'GE' => 'Georgia',
   'GF' => 'French Guiana',
   'GG' => 'Guernsey',
   'GH' => 'Ghana',
   'GI' => 'Gibraltar',
   'GL' => 'Greenland',
   'GM' => 'Gambia',
   'GN' => 'Guinea',
   'GP' => 'Guadeloupe',
   'GQ' => 'Equatorial Guinea',
   'GR' => 'Greece',
   'GS' => 'South Georgia and the South Sandwich Islands',
   'GT' => 'Guatemala',
   'GU' => 'Guam',
   'GW' => 'Guinea-Bissau',
   'GY' => 'Guyana',
   'HK' => 'Hong Kong',
   'HM' => 'Heard Island and McDonald Islands',
   'HN' => 'Honduras',
   'HR' => 'Croatia',
   'HT' => 'Haiti',
   'HU' => 'Hungary',
   'ID' => 'Indonesia',
   'IE' => 'Ireland',
   'IL' => 'Israel',
   'IM' => 'Isle of Man',
   'IN' => 'India',
   'IO' => 'British Indian Ocean Territory',
   'IQ' => 'Iraq',
   'IR' => 'Iran',
   'IS' => 'Iceland',
   'IT' => 'Italy',
   'JE' => 'Jersey',
   'JM' => 'Jamaica',
   'JO' => 'Jordan',
   'JP' => 'Japan',
   'KE' => 'Kenya',
   'KG' => 'Kyrgyzstan',
   'KH' => 'Cambodia',
   'KI' => 'Kiribati',
   'KM' => 'Comoros',
   'KN' => 'Saint Kitts and Nevis',
   'KP' => 'North Korea',
   'KR' => 'South Korea',
   'KW' => 'Kuwait',
   'KY' => 'Cayman Islands',
   'KZ' => 'Kazakhstan',
   'LA' => 'Laos',
   'LB' => 'Lebanon',
   'LC' => 'Saint Lucia',
   'LI' => 'Liechtenstein',
   'LK' => 'Sri Lanka',
   'LR' => 'Liberia',
   'LS' => 'Lesotho',
   'LT' => 'Lithuania',
   'LU' => 'Luxembourg',
   'LV' => 'Latvia',
   'LY' => 'Libya',
   'MA' => 'Morocco',
   'MC' => 'Monaco',
   'MD' => 'Moldova',
   'ME' => 'Montenegro',
   'MF' => 'Saint Martin',
   'MG' => 'Madagascar',
   'MH' => 'Marshall Islands',
   'MK' => 'Macedonia',
   'ML' => 'Mali',
   'MM' => 'Myanmar',
   'MN' => 'Mongolia',
   'MO' => 'Macao',
   'MP' => 'Northern Mariana Islands',
   'MQ' => 'Martinique',
   'MR' => 'Mauritania',
   'MS' => 'Montserrat',
   'MT' => 'Malta',
   'MU' => 'Mauritius',
   'MV' => 'Maldives',
   'MW' => 'Malawi',
   'MX' => 'Mexico',
   'MY' => 'Malaysia',
   'MZ' => 'Mozambique',
   'NA' => 'Namibia',
   'NC' => 'New Caledonia',
   'NE' => 'Niger',
   'NF' => 'Norfolk Island',
   'NG' => 'Nigeria',
   'NI' => 'Nicaragua',
   'NL' => 'Netherlands',
   'NO' => 'Norway',
   'NP' => 'Nepal',
   'NR' => 'Nauru',
   'NU' => 'Niue',
   'NZ' => 'New Zealand',
   'OM' => 'Oman',
   'PA' => 'Panama',
   'PE' => 'Peru',
   'PF' => 'French Polynesia',
   'PG' => 'Papua New Guinea',
   'PH' => 'Philippines',
   'PK' => 'Pakistan',
   'PL' => 'Poland',
   'PM' => 'Saint Pierre and Miquelon',
   'PN' => 'Pitcairn',
   'PR' => 'Puerto Rico',
   'PS' => 'Palestinian Territory',
   'PT' => 'Portugal',
   'PW' => 'Palau',
   'PY' => 'Paraguay',
   'QA' => 'Qatar',
   'RE' => 'Reunion',
   'RO' => 'Romania',
   'RS' => 'Serbia',
   'RU' => 'Russia',
   'RW' => 'Rwanda',
   'SA' => 'Saudi Arabia',
   'SB' => 'Solomon Islands',
   'SC' => 'Seychelles',
   'SD' => 'Sudan',
   'SE' => 'Sweden',
   'SG' => 'Singapore',
   'SH' => 'Saint Helena',
   'SI' => 'Slovenia',
   'SJ' => 'Svalbard and Jan Mayen',
   'SK' => 'Slovakia',
   'SL' => 'Sierra Leone',
   'SM' => 'San Marino',
   'SN' => 'Senegal',
   'SO' => 'Somalia',
   'SR' => 'Suriname',
   'SS' => 'South Sudan',
   'ST' => 'Sao Tome and Principe',
   'SV' => 'El Salvador',
   'SX' => 'Sint Maarten',
   'SY' => 'Syria',
   'SZ' => 'Swaziland',
   'TC' => 'Turks and Caicos Islands',
   'TD' => 'Chad',
   'TF' => 'French Southern Territories',
   'TG' => 'Togo',
   'TH' => 'Thailand',
   'TJ' => 'Tajikistan',
   'TK' => 'Tokelau',
   'TL' => 'East Timor',
   'TM' => 'Turkmenistan',
   'TN' => 'Tunisia',
   'TO' => 'Tonga',
   'TR' => 'Turkey',
   'TT' => 'Trinidad and Tobago',
   'TV' => 'Tuvalu',
   'TW' => 'Taiwan',
   'TZ' => 'Tanzania',
   'UA' => 'Ukraine',
   'UG' => 'Uganda',
   'UM' => 'United States Minor Outlying Islands',
   'US' => 'United States',
   'UY' => 'Uruguay',
   'UZ' => 'Uzbekistan',
   'VA' => 'Vatican',
   'VC' => 'Saint Vincent and the Grenadines',
   'VE' => 'Venezuela',
   'VG' => 'British Virgin Islands',
   'VI' => 'U.S. Virgin Islands',
   'VN' => 'Vietnam',
   'VU' => 'Vanuatu',
   'WF' => 'Wallis and Futuna',
   'WS' => 'Samoa',
   'XK' => 'Kosovo',
   'YE' => 'Yemen',
   'YT' => 'Mayotte',
   'ZA' => 'South Africa',
   'ZM' => 'Zambia',
   'ZW' => 'Zimbabwe'
  }

  COUNTRY_CODES_BY_CODE = COUNTRY_NAMES_BY_CODE.keys.map { |code| [code, code] }.to_h.freeze
  COUNTRY_CODES_BY_NAME = COUNTRY_NAMES_BY_CODE.map(&:reverse).to_h.freeze

  #
  # Country Groups
  #

  CONTINENTS = {
    'Africa'         => %w(AO BF BI BJ BW CD CF CG CI CM CV DJ DZ EG EH ER ET GA GH GM GN GQ GW KE KM LR LS LY MA MG ML MR MU MW MZ NA NE NG RE RW SC SD SL SN SO ST SZ TD TG TN TZ UG YT ZA ZM ZW), # ZR
    'Americas'       => %w(AG AI AN AR AW BB BL BM BO BR BS BZ CA CL CO CR CU DM DO EC FK GD GF GL GP GT GY HN HT JM KN KY LC MF MQ MS MX NI PA PE PM PR PY SR SV TC TT US UY VC VE VG VI),
    # "Antarctica"     => %w('AQ'),
    'Asia'           => %w(AE AF AM AZ BD BH BN BT CC CN CX CY GE HK ID IL IN IO IQ IR JO JP KG KH KP KR KW KZ LA LB LK MM MN MO MV MY NP OM PH PK PS QA RU SA SG SY TH TJ TL TM TR TW UZ VN YE), # TP
    'Atlantic Ocean' => %w(BV GS SH),
    'Europe'         => %w(AD AL AT AX BA BE BG BY CH CZ DE DK EE ES FI FO FR GB GG GI GR HR HU IE IM IS IT JE LI LT LU LV MC MD ME MK MT NL NO PL PT RO RS SE SI SJ SK SM UA VA), # YU FX
    'Indian Ocean'   => %w(HM TF),
    'Oceania'        => %w(AS AU CK FJ FM GU KI MH MP NC NF NR NU NZ PF PG PN PW SB TK TO TV UM VU WF WS),

    'EU for Royal Mail' => %w(AD AL AT AX BA BE BG BY CH CZ DE DK EE ES FI FO FR GB GG GI GR HR HU IE IM IS IT JE LI LT LU LV MC MD ME MK MT NL NO PL PT RO RS SE SI SJ SK SM UA VA) - %w(CH NO)
  }.freeze

  REGIONS = {
    'Central Africa'        => %w(BI CD CF CG RW TD), # ZR
    'Eastern Africa'        => %w(DJ ER ET KE SO TZ UG),
    'Northern Africa'       => %w(DZ EG EH LY MA SD TN),
    'Southern Africa'       => %w(AO BW LS MW MZ NA SZ ZA ZM ZW),
    'Western Africa'        => %w(BF BJ CI CM CV GA GH GM GN GQ GW LR ML MR NE NG SL SN ST TG),

    'Central America'       => %w(BZ CR GT HN MX NI PA SV),
    'North America'         => %w(CA GL PM US),
    'South America'         => %w(AR BO BR CL CO EC FK GF GY PE PY SR UY VE),
    'West Indies'           => %w(AG AI AN AW BB BL BM BS CU DM DO GD GP HT JM KN KY LC MF MQ MS PR TC TT VC VG VI),

    # 'Antarctica'          => %w(AQ),

    'Northern Asia'         => %w(MN RU),
    'Central Asia'          => %w(KG KZ TJ TM UZ),
    'East Asia'             => %w(CN HK JP KP KR MO TW),
    'South Asia'            => %w(AF BD BT IN IO LK MV NP PK),
    'South East Asia'       => %w(BN CC CX ID KH LA MM MY PH SG TH TL VN), # TP
    'South West Asia'       => %w(AE AM AZ BH CY GE IL IQ IR JO KW LB OM PS QA SA SY TR YE),

    'South East Europe'     => %w(AL BA BG GR HR MK RO RS SI), # YU

    'Indian Ocean'          => %w(KM MG MU RE SC YT),
    'Southern Indian Ocean' => %w(HM TF),

    'Pacific'               => %w(AS AU CK FJ FM GU KI MH MP NC NF NR NU NZ PF PG PN PW SB TK TO TV VU WF W),
    'North Pacific Ocean'   => %w(UM),

    'South Atlantic Ocean'  => %w(BV GS SH),

    'Central Europe'        => %w(AT CH CZ HU LI SK),
    'Eastern Europe'        => %w(BY EE LT LV MD PL UA),
    'Northern Europe'       => %w(AX DK FI FO IS NO SE SJ),
    'Southern Europe'       => %w(IT MT SM VA),
    'South West Europe'     => %w(AD ES GI PT),
    'Western Europe'        => %w(BE DE FR GB GG IE IM JE LU MC ME NL) # FX
  }.freeze

  #
  # Arrays of codes
  #

  COUNTRY_CODES = COUNTRY_NAMES_BY_CODE.keys.freeze

  EU_COUNTRY_CODES = %w(
    AT BE BG CY CZ DE DK EE ES FI FR GB GR HU IE IT LT LU LV MT NL PL PT RO SE SI SK
  ).freeze

  # Dependencies list
  GB_COUNTRY_CODES = %w(AI BM FK GB GG GI GS IM IO JE KY MS PN SH TC VG).freeze
  US_COUNTRY_CODES = %w(AS MP PR US VI).freeze


  #
  # Hash data
  #

  COUNTRIES = COUNTRY_NAMES_BY_CODE.map do |code, name|
    [code, { name: name, code: code }]
  end.to_h

  COUNTRIES.each do |code, hash|
    hash[:currency] = case code
                      when 'US'
                        'USD'
                      when 'GB'
                        'GBP'
                      when 'CA'
                        'CAD'
                      when 'AU'
                        'AUD'
                      when 'JP'
                        'JPY'
                      when *EU_COUNTRY_CODES
                        'EUR'
                      end
  end

  CURRENCIES = {
    'USD' => ['US'],
    'GBP' => ['GB'],
    'EUR' => EU_COUNTRY_CODES - ['GB'],
    'CAD' => ['CA'],
    'AUD' => ['AU'],
    'JPY' => ['JP']
  }.freeze

  #
  # Big Uppercase lookup by continent, region, full name, code
  # { 'US' => ['US'], 'NORTH AMERICA' => ['US', 'CA', ...], 'FRANCE' => ['FR'], ... }
  #

  all = COUNTRY_CODES_BY_CODE.merge(COUNTRY_CODES_BY_NAME).merge(REGIONS).merge(CONTINENTS)
  all['Royal Mail'] = all['EU for Royal Mail']

  LOOKUP_COUNTRY_CODES = all.map do |key, countries|
    countries = countries.is_a?(Hash) ? [countries[:name]] : countries
    [
      key.upcase, [countries].flatten
    ]
  end.to_h.freeze

  # rubocop:enable Metrics/LineLength

  attr_accessor :name, :code, :currency

  def self.[](string)
    string = string.to_s.strip
    return nil if string.empty?

    country = new(string)
    return country if country.code

    # TRY HARDER
    string = 'GB' if string =~ /^(uk|great britain|england)$/i
    string = string.to_s.strip
    string = 'US' if string.downcase.include?('america') && !string.downcase.include?('samoa')

    # find the first country hash that has a matching value
    # (US, United States, us, uSa would all match. U.S would not.)
    hash = COUNTRIES.values.detect do |data|
      data.values.grep(/^#{Regexp.quote(string)}$/i).length > 0
    end

    new(hash) if hash
  end

  def initialize(args = {})
    if args.is_a?(String)
      args = COUNTRY_CODES_BY_NAME[args] || args
      args = COUNTRIES[args]
    end

    (args || {}).each { |k, v| send("#{k}=", v) }
  end

  def to_s(format = nil)
    # default to :code so you can pass Country objects
    # to places where a string ('US') is saved to db.
    send(format || :code)
  end

  def full_name
    name
  end

  def alpha2
    code
  end

  def summary
    "#{name} (#{code})"
  end
end
