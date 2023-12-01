import {localeModule, test} from '../qunit';
import {moment} from '../../moment';
localeModule('lb');

test('parse', function (assert) {
    var tests = 'Januar Jan._Februar Febr._Mäerz Mrz._Abrëll Abr._Mee Mee_Juni Jun._Juli Jul._August Aug._September Sept._Oktober Okt._November Nov._Dezember Dez.'.split('_'), i;

    function equalTest(input, mmm, i) {
        assert.equal(moment(input, mmm).month(), i, input + ' should be month ' + (i + 1));
    }

    for (i = 0; i < 12; i++) {
        tests[i] = tests[i].split(' ');
        equalTest(tests[i][0], 'MMM', i);
        equalTest(tests[i][1], 'MMM', i);
        equalTest(tests[i][0], 'MMMM', i);
        equalTest(tests[i][1], 'MMMM', i);
        equalTest(tests[i][0].toLocaleLowerCase(), 'MMMM', i);
        equalTest(tests[i][1].toLocaleLowerCase(), 'MMMM', i);
        equalTest(tests[i][0].toLocaleUpperCase(), 'MMMM', i);
        equalTest(tests[i][1].toLocaleUpperCase(), 'MMMM', i);
    }
});

test('format', function (assert) {
    var a = [
            ['dddd, Do MMMM YYYY, HH:mm:ss', 'Sonndeg, 14. Februar 2010, 15:25:50'],
            ['ddd, HH:mm', 'So., 15:25'],
            ['M Mo MM MMMM MMM', '2 2. 02 Februar Febr.'],
            ['YYYY YY', '2010 10'],
            ['D Do DD', '14 14. 14'],
            ['d do dddd ddd dd', '0 0. Sonndeg So. So'],
            ['DDD DDDo DDDD', '45 45. 045'],
            ['w wo ww', '6 6. 06'],
            ['h hh', '3 03'],
            ['H HH', '15 15'],
            ['m mm', '25 25'],
            ['s ss', '50 50'],
            ['a A', 'pm PM'],
            ['[the] DDDo [day of the year]', 'the 45. day of the year'],
            ['LTS', '15:25:50 Auer'],
            ['L', '14.02.2010'],
            ['LL', '14. Februar 2010'],
            ['LLL', '14. Februar 2010 15:25 Auer'],
            ['LLLL', 'Sonndeg, 14. Februar 2010 15:25 Auer'],
            ['l', '14.2.2010'],
            ['ll', '14. Febr. 2010'],
            ['lll', '14. Febr. 2010 15:25 Auer'],
            ['llll', 'So., 14. Febr. 2010 15:25 Auer']
        ],
        b = moment(new Date(2010, 1, 14, 15, 25, 50, 125)),
        i;
    for (i = 0; i < a.length; i++) {
        assert.equal(b.format(a[i][0]), a[i][1], a[i][0] + ' ---> ' + a[i][1]);
    }
});

test('format month', function (assert) {
    var expected = 'Januar Jan._Februar Febr._Mäerz Mrz._Abrëll Abr._Mee Mee_Juni Jun._Juli Jul._August Aug._September Sept._Oktober Okt._November Nov._Dezember Dez.'.split('_'), i;
    for (i = 0; i < expected.length; i++) {
        assert.equal(moment([2011, i, 1]).format('MMMM MMM'), expected[i], expected[i]);
    }
});

test('format week', function (assert) {
    var expected = 'Sonndeg So. So_Méindeg Mé. Mé_Dënschdeg Dë. Dë_Mëttwoch Më. Më_Donneschdeg Do. Do_Freideg Fr. Fr_Samschdeg Sa. Sa'.split('_'), i;
    for (i = 0; i < expected.length; i++) {
        assert.equal(moment([2011, 0, 2 + i]).format('dddd ddd dd'), expected[i], expected[i]);
    }
});

test('from', function (assert) {
    var start = moment([2007, 1, 28]);
    assert.equal(start.from(moment([2007, 1, 28]).add({s: 44}), true), 'e puer Sekonnen', '44 seconds = a few seconds');
    assert.equal(start.from(moment([2007, 1, 28]).add({s: 45}), true), 'eng Minutt', '45 seconds = a minute');
    assert.equal(start.from(moment([2007, 1, 28]).add({s: 89}), true), 'eng Minutt', '89 seconds = a minute');
    assert.equal(start.from(moment([2007, 1, 28]).add({s: 90}), true), '2 Minutten', '90 seconds = 2 minutes');
    assert.equal(start.from(moment([2007, 1, 28]).add({m: 44}), true), '44 Minutten', '44 minutes = 44 minutes');
    assert.equal(start.from(moment([2007, 1, 28]).add({m: 45}), true), 'eng Stonn', '45 minutes = an hour');
    assert.equal(start.from(moment([2007, 1, 28]).add({m: 89}), true), 'eng Stonn', '89 minutes = an hour');
    assert.equal(start.from(moment([2007, 1, 28]).add({m: 90}), true), '2 Stonnen', '90 minutes = 2 hours');
    assert.equal(start.from(moment([2007, 1, 28]).add({h: 5}), true), '5 Stonnen', '5 hours = 5 hours');
    assert.equal(start.from(moment([2007, 1, 28]).add({h: 21}), true), '21 Stonnen', '21 hours = 21 hours');
    assert.equal(start.from(moment([2007, 1, 28]).add({h: 22}), true), 'een Dag', '22 hours = a day');
    assert.equal(start.from(moment([2007, 1, 28]).add({h: 35}), true), 'een Dag', '35 hours = a day');
    assert.equal(start.from(moment([2007, 1, 28]).add({h: 36}), true), '2 Deeg', '36 hours = 2 days');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 1}), true), 'een Dag', '1 day = a day');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 5}), true), '5 Deeg', '5 days = 5 days');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 25}), true), '25 Deeg', '25 days = 25 days');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 26}), true), 'ee Mount', '26 days = a month');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 30}), true), 'ee Mount', '30 days = a month');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 43}), true), 'ee Mount', '43 days = a month');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 46}), true), '2 Méint', '46 days = 2 months');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 74}), true), '2 Méint', '75 days = 2 months');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 76}), true), '3 Méint', '76 days = 3 months');
    assert.equal(start.from(moment([2007, 1, 28]).add({M: 1}), true), 'ee Mount', '1 month = a month');
    assert.equal(start.from(moment([2007, 1, 28]).add({M: 5}), true), '5 Méint', '5 months = 5 months');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 345}), true), 'ee Joer', '345 days = a year');
    assert.equal(start.from(moment([2007, 1, 28]).add({d: 548}), true), '2 Joer', '548 days = 2 years');
    assert.equal(start.from(moment([2007, 1, 28]).add({y: 1}), true), 'ee Joer', '1 year = a year');
    assert.equal(start.from(moment([2007, 1, 28]).add({y: 5}), true), '5 Joer', '5 years = 5 years');
});

test('suffix', function (assert) {
    assert.equal(moment(30000).from(0), 'an e puer Sekonnen', 'prefix');
    assert.equal(moment(0).from(30000), 'virun e puer Sekonnen', 'suffix');
});

test('fromNow', function (assert) {
    assert.equal(moment().add({s: 30}).fromNow(), 'an e puer Sekonnen', 'in a few seconds');
    assert.equal(moment().add({d: 1}).fromNow(), 'an engem Dag', 'in one day');
    assert.equal(moment().add({d: 2}).fromNow(), 'an 2 Deeg', 'in 2 days');
    assert.equal(moment().add({d: 3}).fromNow(), 'an 3 Deeg', 'in 3 days');
    assert.equal(moment().add({d: 4}).fromNow(), 'a 4 Deeg', 'in 4 days');
    assert.equal(moment().add({d: 5}).fromNow(), 'a 5 Deeg', 'in 5 days');
    assert.equal(moment().add({d: 6}).fromNow(), 'a 6 Deeg', 'in 6 days');
    assert.equal(moment().add({d: 7}).fromNow(), 'a 7 Deeg', 'in 7 days');
    assert.equal(moment().add({d: 8}).fromNow(), 'an 8 Deeg', 'in 8 days');
    assert.equal(moment().add({d: 9}).fromNow(), 'an 9 Deeg', 'in 9 days');
    assert.equal(moment().add({d: 10}).fromNow(), 'an 10 Deeg', 'in 10 days');
    assert.equal(moment().add({y: 100}).fromNow(), 'an 100 Joer', 'in 100 years');
    assert.equal(moment().add({y: 400}).fromNow(), 'a 400 Joer', 'in 400 years');
});

test('calendar last week', function (assert) {
    var i, m, weekday, datestring;
    for (i = 2; i < 7; i++) {
        m = moment().subtract({d: i});

        // Different date string for 'Dënschdeg' (Tuesday) and 'Donneschdeg' (Thursday)
        weekday = parseInt(m.format('d'), 10);
        datestring = (weekday === 2 || weekday === 4 ? '[Leschten] dddd [um] LT' : '[Leschte] dddd [um] LT');

        assert.equal(m.calendar(), m.format(datestring), 'Today + ' + i + ' days current time');
        m.hours(0).minutes(0).seconds(0).milliseconds(0);
        assert.equal(m.calendar(), m.format(datestring), 'Today + ' + i + ' days beginning of day');
        m.hours(23).minutes(59).seconds(59).milliseconds(999);
        assert.equal(m.calendar(), m.format(datestring), 'Today + ' + i + ' days end of day');
    }
});

test('lenient ordinal parsing', function (assert) {
    var i, ordinalStr, testMoment;
    for (i = 1; i <= 31; ++i) {
        ordinalStr = moment([2014, 0, i]).format('YYYY MM Do');
        testMoment = moment(ordinalStr, 'YYYY MM Do');
        assert.equal(testMoment.year(), 2014,
                'lenient ordinal parsing ' + i + ' year check');
        assert.equal(testMoment.month(), 0,
                'lenient ordinal parsing ' + i + ' month check');
        assert.equal(testMoment.date(), i,
                'lenient ordinal parsing ' + i + ' date check');
    }
});

test('lenient ordinal parsing of number', function (assert) {
    var i, testMoment;
    for (i = 1; i <= 31; ++i) {
        testMoment = moment('2014 01 ' + i, 'YYYY MM Do');
        assert.equal(testMoment.year(), 2014,
                'lenient ordinal parsing of number ' + i + ' year check');
        assert.equal(testMoment.month(), 0,
                'lenient ordinal parsing of number ' + i + ' month check');
        assert.equal(testMoment.date(), i,
                'lenient ordinal parsing of number ' + i + ' date check');
    }
});

test('strict ordinal parsing', function (assert) {
    var i, ordinalStr, testMoment;
    for (i = 1; i <= 31; ++i) {
        ordinalStr = moment([2014, 0, i]).format('YYYY MM Do');
        testMoment = moment(ordinalStr, 'YYYY MM Do', true);
        assert.ok(testMoment.isValid(), 'strict ordinal parsing ' + i);
    }
});
