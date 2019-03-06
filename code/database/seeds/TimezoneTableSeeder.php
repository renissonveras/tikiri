<?php

use Illuminate\Database\Seeder;

class TimezoneTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('timezone')->delete();
        
        \DB::table('timezone')->insert(array (
            0 => 
            array (
                'id' => '1',
                'name' => 'Pacific/Midway',
            'location' => '(GMT-11:00) Midway Island',
            ),
            1 => 
            array (
                'id' => '2',
                'name' => 'US/Samoa',
            'location' => '(GMT-11:00) Samoa',
            ),
            2 => 
            array (
                'id' => '3',
                'name' => 'US/Hawaii',
            'location' => '(GMT-10:00) Hawaii',
            ),
            3 => 
            array (
                'id' => '4',
                'name' => 'US/Alaska',
            'location' => '(GMT-09:00) Alaska',
            ),
            4 => 
            array (
                'id' => '5',
                'name' => 'US/Pacific',
            'location' => '(GMT-08:00) Pacific Time (US &amp; Canada)',
            ),
            5 => 
            array (
                'id' => '6',
                'name' => 'America/Tijuana',
            'location' => '(GMT-08:00) Tijuana',
            ),
            6 => 
            array (
                'id' => '7',
                'name' => 'US/Arizona',
            'location' => '(GMT-07:00) Arizona',
            ),
            7 => 
            array (
                'id' => '8',
                'name' => 'US/Mountain',
            'location' => '(GMT-07:00) Mountain Time (US &amp; Canada)',
            ),
            8 => 
            array (
                'id' => '9',
                'name' => 'America/Chihuahua',
            'location' => '(GMT-07:00) Chihuahua',
            ),
            9 => 
            array (
                'id' => '10',
                'name' => 'America/Mazatlan',
            'location' => '(GMT-07:00) Mazatlan',
            ),
            10 => 
            array (
                'id' => '11',
                'name' => 'America/Mexico_City',
            'location' => '(GMT-06:00) Mexico City',
            ),
            11 => 
            array (
                'id' => '12',
                'name' => 'America/Monterrey',
            'location' => '(GMT-06:00) Monterrey',
            ),
            12 => 
            array (
                'id' => '13',
                'name' => 'Canada/Saskatchewan',
            'location' => '(GMT-06:00) Saskatchewan',
            ),
            13 => 
            array (
                'id' => '14',
                'name' => 'US/Central',
            'location' => '(GMT-06:00) Central Time (US &amp; Canada)',
            ),
            14 => 
            array (
                'id' => '15',
                'name' => 'US/Eastern',
            'location' => '(GMT-05:00) Eastern Time (US &amp; Canada)',
            ),
            15 => 
            array (
                'id' => '16',
                'name' => 'US/East-Indiana',
            'location' => '(GMT-05:00) Indiana (East)',
            ),
            16 => 
            array (
                'id' => '17',
                'name' => 'America/Bogota',
            'location' => '(GMT-05:00) Bogota',
            ),
            17 => 
            array (
                'id' => '18',
                'name' => 'America/Lima',
            'location' => '(GMT-05:00) Lima',
            ),
            18 => 
            array (
                'id' => '19',
                'name' => 'America/Caracas',
            'location' => '(GMT-04:30) Caracas',
            ),
            19 => 
            array (
                'id' => '20',
                'name' => 'Canada/Atlantic',
            'location' => '(GMT-04:00) Atlantic Time (Canada)',
            ),
            20 => 
            array (
                'id' => '21',
                'name' => 'America/La_Paz',
            'location' => '(GMT-04:00) La Paz',
            ),
            21 => 
            array (
                'id' => '22',
                'name' => 'America/Santiago',
            'location' => '(GMT-04:00) Santiago',
            ),
            22 => 
            array (
                'id' => '23',
                'name' => 'Canada/Newfoundland',
            'location' => '(GMT-03:30) Newfoundland',
            ),
            23 => 
            array (
                'id' => '24',
                'name' => 'America/Buenos_Aires',
            'location' => '(GMT-03:00) Buenos Aires',
            ),
            24 => 
            array (
                'id' => '25',
                'name' => 'Greenland',
            'location' => '(GMT-03:00) Greenland',
            ),
            25 => 
            array (
                'id' => '26',
                'name' => 'Atlantic/Stanley',
            'location' => '(GMT-02:00) Stanley',
            ),
            26 => 
            array (
                'id' => '27',
                'name' => 'Atlantic/Azores',
            'location' => '(GMT-01:00) Azores',
            ),
            27 => 
            array (
                'id' => '28',
                'name' => 'Atlantic/Cape_Verde',
            'location' => '(GMT-01:00) Cape Verde Is.',
            ),
            28 => 
            array (
                'id' => '29',
                'name' => 'Africa/Casablanca',
            'location' => '(GMT) Casablanca',
            ),
            29 => 
            array (
                'id' => '30',
                'name' => 'Europe/Dublin',
            'location' => '(GMT) Dublin',
            ),
            30 => 
            array (
                'id' => '31',
                'name' => 'Europe/Lisbon',
            'location' => '(GMT) Lisbon',
            ),
            31 => 
            array (
                'id' => '32',
                'name' => 'Europe/London',
            'location' => '(GMT) London',
            ),
            32 => 
            array (
                'id' => '33',
                'name' => 'Africa/Monrovia',
            'location' => '(GMT) Monrovia',
            ),
            33 => 
            array (
                'id' => '34',
                'name' => 'Europe/Amsterdam',
            'location' => '(GMT+01:00) Amsterdam',
            ),
            34 => 
            array (
                'id' => '35',
                'name' => 'Europe/Belgrade',
            'location' => '(GMT+01:00) Belgrade',
            ),
            35 => 
            array (
                'id' => '36',
                'name' => 'Europe/Berlin',
            'location' => '(GMT+01:00) Berlin',
            ),
            36 => 
            array (
                'id' => '37',
                'name' => 'Europe/Bratislava',
            'location' => '(GMT+01:00) Bratislava',
            ),
            37 => 
            array (
                'id' => '38',
                'name' => 'Europe/Brussels',
            'location' => '(GMT+01:00) Brussels',
            ),
            38 => 
            array (
                'id' => '39',
                'name' => 'Europe/Budapest',
            'location' => '(GMT+01:00) Budapest',
            ),
            39 => 
            array (
                'id' => '40',
                'name' => 'Europe/Copenhagen',
            'location' => '(GMT+01:00) Copenhagen',
            ),
            40 => 
            array (
                'id' => '41',
                'name' => 'Europe/Ljubljana',
            'location' => '(GMT+01:00) Ljubljana',
            ),
            41 => 
            array (
                'id' => '42',
                'name' => 'Europe/Madrid',
            'location' => '(GMT+01:00) Madrid',
            ),
            42 => 
            array (
                'id' => '43',
                'name' => 'Europe/Paris',
            'location' => '(GMT+01:00) Paris',
            ),
            43 => 
            array (
                'id' => '44',
                'name' => 'Europe/Prague',
            'location' => '(GMT+01:00) Prague',
            ),
            44 => 
            array (
                'id' => '45',
                'name' => 'Europe/Rome',
            'location' => '(GMT+01:00) Rome',
            ),
            45 => 
            array (
                'id' => '46',
                'name' => 'Europe/Sarajevo',
            'location' => '(GMT+01:00) Sarajevo',
            ),
            46 => 
            array (
                'id' => '47',
                'name' => 'Europe/Skopje',
            'location' => '(GMT+01:00) Skopje',
            ),
            47 => 
            array (
                'id' => '48',
                'name' => 'Europe/Stockholm',
            'location' => '(GMT+01:00) Stockholm',
            ),
            48 => 
            array (
                'id' => '49',
                'name' => 'Europe/Vienna',
            'location' => '(GMT+01:00) Vienna',
            ),
            49 => 
            array (
                'id' => '50',
                'name' => 'Europe/Warsaw',
            'location' => '(GMT+01:00) Warsaw',
            ),
            50 => 
            array (
                'id' => '51',
                'name' => 'Europe/Zagreb',
            'location' => '(GMT+01:00) Zagreb',
            ),
            51 => 
            array (
                'id' => '52',
                'name' => 'Europe/Athens',
            'location' => '(GMT+02:00) Athens',
            ),
            52 => 
            array (
                'id' => '53',
                'name' => 'Europe/Bucharest',
            'location' => '(GMT+02:00) Bucharest',
            ),
            53 => 
            array (
                'id' => '54',
                'name' => 'Africa/Cairo',
            'location' => '(GMT+02:00) Cairo',
            ),
            54 => 
            array (
                'id' => '55',
                'name' => 'Africa/Harare',
            'location' => '(GMT+02:00) Harare',
            ),
            55 => 
            array (
                'id' => '56',
                'name' => 'Europe/Helsinki',
            'location' => '(GMT+02:00) Helsinki',
            ),
            56 => 
            array (
                'id' => '57',
                'name' => 'Europe/Istanbul',
            'location' => '(GMT+02:00) Istanbul',
            ),
            57 => 
            array (
                'id' => '58',
                'name' => 'Asia/Jerusalem',
            'location' => '(GMT+02:00) Jerusalem',
            ),
            58 => 
            array (
                'id' => '59',
                'name' => 'Europe/Kiev',
            'location' => '(GMT+02:00) Kyiv',
            ),
            59 => 
            array (
                'id' => '60',
                'name' => 'Europe/Minsk',
            'location' => '(GMT+02:00) Minsk',
            ),
            60 => 
            array (
                'id' => '61',
                'name' => 'Europe/Riga',
            'location' => '(GMT+02:00) Riga',
            ),
            61 => 
            array (
                'id' => '62',
                'name' => 'Europe/Sofia',
            'location' => '(GMT+02:00) Sofia',
            ),
            62 => 
            array (
                'id' => '63',
                'name' => 'Europe/Tallinn',
            'location' => '(GMT+02:00) Tallinn',
            ),
            63 => 
            array (
                'id' => '64',
                'name' => 'Europe/Vilnius',
            'location' => '(GMT+02:00) Vilnius',
            ),
            64 => 
            array (
                'id' => '65',
                'name' => 'Asia/Baghdad',
            'location' => '(GMT+03:00) Baghdad',
            ),
            65 => 
            array (
                'id' => '66',
                'name' => 'Asia/Kuwait',
            'location' => '(GMT+03:00) Kuwait',
            ),
            66 => 
            array (
                'id' => '67',
                'name' => 'Africa/Nairobi',
            'location' => '(GMT+03:00) Nairobi',
            ),
            67 => 
            array (
                'id' => '68',
                'name' => 'Asia/Riyadh',
            'location' => '(GMT+03:00) Riyadh',
            ),
            68 => 
            array (
                'id' => '69',
                'name' => 'Asia/Tehran',
            'location' => '(GMT+03:30) Tehran',
            ),
            69 => 
            array (
                'id' => '70',
                'name' => 'Europe/Moscow',
            'location' => '(GMT+04:00) Moscow',
            ),
            70 => 
            array (
                'id' => '71',
                'name' => 'Asia/Baku',
            'location' => '(GMT+04:00) Baku',
            ),
            71 => 
            array (
                'id' => '72',
                'name' => 'Europe/Volgograd',
            'location' => '(GMT+04:00) Volgograd',
            ),
            72 => 
            array (
                'id' => '73',
                'name' => 'Asia/Muscat',
            'location' => '(GMT+04:00) Muscat',
            ),
            73 => 
            array (
                'id' => '74',
                'name' => 'Asia/Tbilisi',
            'location' => '(GMT+04:00) Tbilisi',
            ),
            74 => 
            array (
                'id' => '75',
                'name' => 'Asia/Yerevan',
            'location' => '(GMT+04:00) Yerevan',
            ),
            75 => 
            array (
                'id' => '76',
                'name' => 'Asia/Kabul',
            'location' => '(GMT+04:30) Kabul',
            ),
            76 => 
            array (
                'id' => '77',
                'name' => 'Asia/Karachi',
            'location' => '(GMT+05:00) Karachi',
            ),
            77 => 
            array (
                'id' => '78',
                'name' => 'Asia/Tashkent',
            'location' => '(GMT+05:00) Tashkent',
            ),
            78 => 
            array (
                'id' => '79',
                'name' => 'Asia/Kolkata',
            'location' => '(GMT+05:30) Kolkata',
            ),
            79 => 
            array (
                'id' => '80',
                'name' => 'Asia/Kathmandu',
            'location' => '(GMT+05:45) Kathmandu',
            ),
            80 => 
            array (
                'id' => '81',
                'name' => 'Asia/Yekaterinburg',
            'location' => '(GMT+06:00) Ekaterinburg',
            ),
            81 => 
            array (
                'id' => '82',
                'name' => 'Asia/Almaty',
            'location' => '(GMT+06:00) Almaty',
            ),
            82 => 
            array (
                'id' => '83',
                'name' => 'Asia/Dhaka',
            'location' => '(GMT+06:00) Dhaka',
            ),
            83 => 
            array (
                'id' => '84',
                'name' => 'Asia/Novosibirsk',
            'location' => '(GMT+07:00) Novosibirsk',
            ),
            84 => 
            array (
                'id' => '85',
                'name' => 'Asia/Bangkok',
            'location' => '(GMT+07:00) Bangkok',
            ),
            85 => 
            array (
                'id' => '86',
                'name' => 'Asia/Ho_Chi_Minh',
            'location' => '(GMT+07.00) Ho Chi Minh',
            ),
            86 => 
            array (
                'id' => '87',
                'name' => 'Asia/Jakarta',
            'location' => '(GMT+07:00) Jakarta',
            ),
            87 => 
            array (
                'id' => '88',
                'name' => 'Asia/Krasnoyarsk',
            'location' => '(GMT+08:00) Krasnoyarsk',
            ),
            88 => 
            array (
                'id' => '89',
                'name' => 'Asia/Chongqing',
            'location' => '(GMT+08:00) Chongqing',
            ),
            89 => 
            array (
                'id' => '90',
                'name' => 'Asia/Hong_Kong',
            'location' => '(GMT+08:00) Hong Kong',
            ),
            90 => 
            array (
                'id' => '91',
                'name' => 'Asia/Kuala_Lumpur',
            'location' => '(GMT+08:00) Kuala Lumpur',
            ),
            91 => 
            array (
                'id' => '92',
                'name' => 'Australia/Perth',
            'location' => '(GMT+08:00) Perth',
            ),
            92 => 
            array (
                'id' => '93',
                'name' => 'Asia/Singapore',
            'location' => '(GMT+08:00) Singapore',
            ),
            93 => 
            array (
                'id' => '94',
                'name' => 'Asia/Taipei',
            'location' => '(GMT+08:00) Taipei',
            ),
            94 => 
            array (
                'id' => '95',
                'name' => 'Asia/Ulaanbaatar',
            'location' => '(GMT+08:00) Ulaan Bataar',
            ),
            95 => 
            array (
                'id' => '96',
                'name' => 'Asia/Urumqi',
            'location' => '(GMT+08:00) Urumqi',
            ),
            96 => 
            array (
                'id' => '97',
                'name' => 'Asia/Irkutsk',
            'location' => '(GMT+09:00) Irkutsk',
            ),
            97 => 
            array (
                'id' => '98',
                'name' => 'Asia/Seoul',
            'location' => '(GMT+09:00) Seoul',
            ),
            98 => 
            array (
                'id' => '99',
                'name' => 'Asia/Tokyo',
            'location' => '(GMT+09:00) Tokyo',
            ),
            99 => 
            array (
                'id' => '100',
                'name' => 'Australia/Adelaide',
            'location' => '(GMT+09:30) Adelaide',
            ),
            100 => 
            array (
                'id' => '101',
                'name' => 'Australia/Darwin',
            'location' => '(GMT+09:30) Darwin',
            ),
            101 => 
            array (
                'id' => '102',
                'name' => 'Asia/Yakutsk',
            'location' => '(GMT+10:00) Yakutsk',
            ),
            102 => 
            array (
                'id' => '103',
                'name' => 'Australia/Brisbane',
            'location' => '(GMT+10:00) Brisbane',
            ),
            103 => 
            array (
                'id' => '104',
                'name' => 'Australia/Canberra',
            'location' => '(GMT+10:00) Canberra',
            ),
            104 => 
            array (
                'id' => '105',
                'name' => 'Pacific/Guam',
            'location' => '(GMT+10:00) Guam',
            ),
            105 => 
            array (
                'id' => '106',
                'name' => 'Australia/Hobart',
            'location' => '(GMT+10:00) Hobart',
            ),
            106 => 
            array (
                'id' => '107',
                'name' => 'Australia/Melbourne',
            'location' => '(GMT+10:00) Melbourne',
            ),
            107 => 
            array (
                'id' => '108',
                'name' => 'Pacific/Port_Moresby',
            'location' => '(GMT+10:00) Port Moresby',
            ),
            108 => 
            array (
                'id' => '109',
                'name' => 'Australia/Sydney',
            'location' => '(GMT+10:00) Sydney',
            ),
            109 => 
            array (
                'id' => '110',
                'name' => 'Asia/Vladivostok',
            'location' => '(GMT+11:00) Vladivostok',
            ),
            110 => 
            array (
                'id' => '111',
                'name' => 'Asia/Magadan',
            'location' => '(GMT+12:00) Magadan',
            ),
            111 => 
            array (
                'id' => '112',
                'name' => 'Pacific/Auckland',
            'location' => '(GMT+12:00) Auckland',
            ),
            112 => 
            array (
                'id' => '113',
                'name' => 'Pacific/Fiji',
            'location' => '(GMT+12:00) Fiji',
            ),
            113 => 
            array (
                'id' => '114',
                'name' => 'America/Sao_Paulo',
            'location' => '(GMT-03:00) Sao Paulo',
            ),
            114 => 
            array (
                'id' => '115',
                'name' => 'America/Rio_branco',
            'location' => '(GMT-05:00) Rio Branco',
            ),
            115 => 
            array (
                'id' => '116',
                'name' => 'America/Belem',
            'location' => '(GMT-03:00) Belem',
            ),
            116 => 
            array (
                'id' => '117',
                'name' => 'America/Bahia',
            'location' => '(GMT-03:00) Bahia',
            ),
            117 => 
            array (
                'id' => '118',
                'name' => 'America/Cuiaba',
            'location' => '(GMT-04:00) Cuiaba',
            ),
            118 => 
            array (
                'id' => '119',
                'name' => 'America/Fortaleza',
            'location' => '(GMT-03:00) Fortaleza',
            ),
            119 => 
            array (
                'id' => '120',
                'name' => 'America/Recife',
            'location' => '(GMT-03:00) Recife',
            ),
            120 => 
            array (
                'id' => '121',
                'name' => 'America/Boa_Vista',
            'location' => '(GMT-04:00) Boa Vista',
            ),
            121 => 
            array (
                'id' => '122',
                'name' => 'America/Maceio',
            'location' => '(GMT-03:00) Maceio',
            ),
            122 => 
            array (
                'id' => '123',
                'name' => 'America/Araguaia',
            'location' => '(GMT-03:00) Araguaia',
            ),
            123 => 
            array (
                'id' => '124',
                'name' => 'America/Manaus',
            'location' => '(GMT-04:00) Manaus',
            ),
            124 => 
            array (
                'id' => '125',
                'name' => 'America/Campo_Grande',
            'location' => '(GMT-04:00) Campo Grande',
            ),
            125 => 
            array (
                'id' => '126',
                'name' => 'America/Porto_Velho',
            'location' => '(GMT-04:00) Porto Velho',
            ),
        ));
        
        
    }
}
