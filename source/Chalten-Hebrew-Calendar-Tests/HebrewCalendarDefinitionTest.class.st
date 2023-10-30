Class {
	#name : 'HebrewCalendarDefinitionTest',
	#superclass : 'TestCase',
	#instVars : [
		'calendar'
	],
	#category : 'Chalten-Hebrew-Calendar-Tests',
	#package : 'Chalten-Hebrew-Calendar-Tests'
}

{ #category : 'running' }
HebrewCalendarDefinitionTest >> setUp [ 

	calendar := ChaltenEnvironment calendarNamed: #HebrewCalendar.
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testAdarI [

	self assert: calendar adarI = AdarI
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testAdarII [

	self assert: calendar adarII = AdarII
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testAdarIIName [

	self assert: calendar adarIIName = 'Adar II'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testAdarIINumber [

	self assert: calendar adarIINumber = 13
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testAdarIName [

	self assert: calendar adarIName = 'Adar I'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testAdarINumber [

	self assert: calendar adarINumber = 12
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testAdarName [

	self assert: calendar adarName = 'Adar'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testAdarNumber [

	self assert: calendar adarNumber = 12
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testAmountOfDaysPerWeek [

	self assert: calendar amountOfDaysPerWeek = 7
]

{ #category : 'test year testing' }
HebrewCalendarDefinitionTest >> testAmountOfMonthsInYear [
	self assert: (calendar amountOfMonthsInYear: 5767 asHebrewYear) = 12.
	self assert: (calendar amountOfMonthsInYear: 5768 asHebrewYear) = 13
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testAmountOfMonthsPerYear [

	self assert: calendar amountOfMonthsPerYear = 13
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testAv [

	self assert: calendar av = Av
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testAvName [

	self assert: calendar avName = 'Av'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testAvNumber [

	self assert: calendar avNumber = 5
]

{ #category : 'test converting' }
HebrewCalendarDefinitionTest >> testConvert [

	self assert: (calendar convert: March twentieth, 2007) = (Nisan first, 5767).
	self assert: (calendar convert: June fourth, 2008) = (Sivan first, 5768).
	self assert: (calendar convert: December second, 2008) = (Kislev fifth, 5769).
	self assert: (calendar convert: March tenth, 2006) = (Adar tenth, 5766).
	self assert: (calendar convert: February eleventh, 2016) = (AdarI second, 5776).
	
	self assert: (calendar convert: (March twentieth, 2007 at: TimeOfDay noon)) =
		(Nisan first, 5767 at: TimeOfDay noon).
	self assert: (calendar convert: (June fourth, 2008 at: TimeOfDay noon)) =
		(Sivan first, 5768 at: TimeOfDay noon).
	self assert: (calendar convert: (December second, 2008 at: TimeOfDay noon)) =
		(Kislev fifth, 5769 at: TimeOfDay noon).
	self assert: (calendar convert: (March tenth, 2006 at: TimeOfDay noon)) =
		(Adar tenth, 5766 at: TimeOfDay noon).
	self assert: (calendar convert: (February eleventh, 2016 at: TimeOfDay noon)) =
		(AdarI second, 5776 at: TimeOfDay noon).
	
	self
		should: [ calendar convert: 1 ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex description = 'Error: 1 can`t be converted to Date nor DateTime' ]
]

{ #category : 'test converting' }
HebrewCalendarDefinitionTest >> testConvertToSmalltalkDate [

	| hebrewDate smalltalkDate |

	hebrewDate := Iyyar twentyfirst, 5767.
	smalltalkDate := Date newDay: 9 month: 5 year: 2007.
	self assert: (calendar convertToSmalltalkDate: hebrewDate) = smalltalkDate
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testCurrentDayOfMonth [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentDayOfMonth 
				= (calendar convertToHebrewDate: gregorianToday) dayOfMonth
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testCurrentMonth [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentMonth 
				= (calendar convertToHebrewDate: gregorianToday) month
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testCurrentMonthOfYear [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentMonthOfYear 
				= (calendar convertToHebrewDate: gregorianToday) monthOfYear
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testCurrentYear [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentYear 
				= (calendar convertToHebrewDate: gregorianToday) year
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testDateFromFixed [
	| nisanFirstOf1 tevetTwentiethOf5767 marheshvanTwelfthOf1945 |
	nisanFirstOf1 := Nisan first , 1.
	tevetTwentiethOf5767 := Tevet twentieth , 5767.
	marheshvanTwelfthOf1945 := Marheshvan twelfth , 1945.
	self 
		assert: (calendar dateFromNumberOfDays: -1373249) = nisanFirstOf1.
	self assert: (calendar dateFromNumberOfDays: 732686) 
				= tevetTwentiethOf5767.
	self assert: (calendar dateFromNumberOfDays: -663352) 
				= marheshvanTwelfthOf1945
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testDayNamed [

	self
		assert: (calendar dayNamed: 'yom rishon') = YomRishon;
		assert: (calendar dayNamed: 'yom sheni') = YomSheni;
		assert: (calendar dayNamed: 'yom shelishi') = YomShelishi;
		assert: (calendar dayNamed: 'yom revi`i') = YomRevii;
		assert: (calendar dayNamed: 'yom hamishi') = YomHamishi;
		assert: (calendar dayNamed: 'yom shishi') = YomShishi;
		assert: (calendar dayNamed: 'yom shabbat') = YomShabbat
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testDayOf [

	self assert: (calendar dayOf: Nisan twentysecond, 5775) = YomShabbat
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testDayPositionedInWeek [

	self
		assert: (calendar dayPositionedInWeek: 1) = YomRishon;
		assert: (calendar dayPositionedInWeek: 2) = YomSheni;
		assert: (calendar dayPositionedInWeek: 3) = YomShelishi;
		assert: (calendar dayPositionedInWeek: 4) = YomRevii;
		assert: (calendar dayPositionedInWeek: 5) = YomHamishi;
		assert: (calendar dayPositionedInWeek: 6) = YomShishi;
		assert: (calendar dayPositionedInWeek: 7) = YomShabbat
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testDaysFromEpochTo [
	| nisanFirstOf0 nisanFirstOf1 nisanSecondOf1 nisanFifteenthOf1 nisanFirstOf2 nisanFirstOf5 nisanFirstOf5767 |
	nisanFirstOf0 := Nisan first , 0.
	nisanFirstOf1 := Nisan first , 1.
	nisanSecondOf1 := Nisan second , 1.
	nisanFifteenthOf1 := Nisan fifteenth , 1.
	nisanFirstOf2 := Nisan first , 2.
	nisanFirstOf5 := Nisan first , 5.
	nisanFirstOf5767 := Nisan first , 5767.
	self assert: (calendar numberOfDaysFromEpochTo: nisanFirstOf0) = -1373605 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: nisanFirstOf1) = -1373250 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: nisanSecondOf1) = -1373249 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: nisanFifteenthOf1) = -1373236 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: nisanFirstOf2) = -1372895 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: nisanFirstOf5) = -1371803 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: nisanFirstOf5767) = 732754 daysMeasure
]

{ #category : 'test global variables' }
HebrewCalendarDefinitionTest >> testDaysGlobalVariables [

	self
		assert: YomRishon = calendar yomRishon;
		assert: YomSheni = calendar yomSheni;
		assert: YomShelishi = calendar yomShelishi;
		assert: YomRevii = calendar yomRevii;
		assert: YomHamishi = calendar yomHamishi;
		assert: YomShishi = calendar yomShishi;
		assert: YomShabbat = calendar yomShabbat
]

{ #category : 'test year querying' }
HebrewCalendarDefinitionTest >> testDistanceInYearsFromTo [

	self assert: (calendar
		distanceInYearsFrom: 5773 asHebrewYear
		to: 5775 asHebrewYear) = 2 yearsMeasure
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testElul [

	self assert: calendar elul = Elul
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testElulName [

	self assert: calendar elulName = 'Elul'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testElulNumber [

	self assert: calendar elulNumber = 6
]

{ #category : 'test accessing' }
HebrewCalendarDefinitionTest >> testEpoch [

	self assert: calendar epoch = -1373427
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testFirstMonth [

	self assert: calendar firstMonth = Tishri
]

{ #category : 'test month of year accessing' }
HebrewCalendarDefinitionTest >> testFirstMonthOf [
	| year |
	year := 5767 asHebrewYear.
	self assert: (calendar firstMonthOf: year) = (Tishri , 5767).
	year := 5765 asHebrewYear.
	self assert: (calendar firstMonthOf: year) = (Tishri , 5765)
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testFixedFromDate [
	| nisanFirstOf1 marheshvanIITwelveOf1945 tevetTwentiethOf5767 |
	nisanFirstOf1 := Nisan first , 1.
	marheshvanIITwelveOf1945 := Marheshvan twelfth , 1945.
	tevetTwentiethOf5767 := Tevet twentieth , 5767.
	self
		assert: (calendar numberOfDaysFromDate: nisanFirstOf1) = -1373249;
		assert: (calendar numberOfDaysFromDate: marheshvanIITwelveOf1945) 
					= -663352;
		assert: (calendar numberOfDaysFromDate: tevetTwentiethOf5767) 
					= 732686
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsAdar [

	self assert: (calendar isAdar: Adar)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsAdarI [

	self assert: (calendar isAdarI: AdarI)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsAdarII [

	self assert: (calendar isAdarII: AdarII)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsAv [

	self assert: (calendar isAv: Av)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsElul [

	self assert: (calendar isElul: Elul)
]

{ #category : 'test year testing' }
HebrewCalendarDefinitionTest >> testIsFirstMonthOfYear [

	self assert: (calendar isFirstMonthOfYear: Tishri).
	self deny: (calendar isFirstMonthOfYear: Nisan).
	self deny: (calendar isFirstMonthOfYear: Elul)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsIyyar [

	self assert: (calendar isIyyar: Iyyar)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsKislev [

	self assert: (calendar isKislev: Kislev)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsLongMarheshvan [

	self assert: (calendar isLongMarheshvan: Marheshvan, 5776)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsMarheshvan [

	self assert: (calendar isMarheshvan: Marheshvan)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsNisan [

	self assert: (calendar isNisan: Nisan)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsShevat [

	self assert: (calendar isShevat: Shevat)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsShortKislev [

	self assert: (calendar isShortKislev: Kislev, 5773)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsSivan [

	self assert: (calendar isSivan: Sivan)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsTammuz [

	self assert: (calendar isTammuz: Tammuz)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsTevet [

	self assert: (calendar isTevet: Tevet)
]

{ #category : 'test month testing' }
HebrewCalendarDefinitionTest >> testIsTishri [

	self assert: (calendar isTishri: Tishri)
]

{ #category : 'test year testing' }
HebrewCalendarDefinitionTest >> testIsYearNumberLeap [

	self
		assert: (calendar isYearNumberLeap: -2);
		assert: (calendar isYearNumberLeap: 0);
		assert: (calendar isYearNumberLeap: 3);
		assert: (calendar isYearNumberLeap: 6);
		assert: (calendar isYearNumberLeap: 8);
		assert: (calendar isYearNumberLeap: 11);
		assert: (calendar isYearNumberLeap: 14);
		assert: (calendar isYearNumberLeap: 17);
		assert: (calendar isYearNumberLeap: 19);
		assert: (calendar isYearNumberLeap: 22);
		assert: (calendar isYearNumberLeap: 25);
		assert: (calendar isYearNumberLeap: 27);
		assert: (calendar isYearNumberLeap: 5768).

	self
		deny: (calendar isYearNumberLeap: -3);
		deny: (calendar isYearNumberLeap: 195);
		deny: (calendar isYearNumberLeap: 1400);
		deny: (calendar isYearNumberLeap: 1429);
		deny: (calendar isYearNumberLeap: 5767)
]

{ #category : 'test day testing' }
HebrewCalendarDefinitionTest >> testIsYomHamishi [

	self assert: (calendar isYomHamishi: YomHamishi)
]

{ #category : 'test day testing' }
HebrewCalendarDefinitionTest >> testIsYomRevii [

	self assert: (calendar isYomRevii: YomRevii)
]

{ #category : 'test day testing' }
HebrewCalendarDefinitionTest >> testIsYomRishon [

	self assert: (calendar isYomRishon: YomRishon)
]

{ #category : 'test day testing' }
HebrewCalendarDefinitionTest >> testIsYomShabbat [

	self assert: (calendar isYomShabbat: YomShabbat)
]

{ #category : 'test day testing' }
HebrewCalendarDefinitionTest >> testIsYomShelishi [

	self assert: (calendar isYomShelishi: YomShelishi)
]

{ #category : 'test day testing' }
HebrewCalendarDefinitionTest >> testIsYomSheni [

	self assert: (calendar isYomSheni: YomSheni)
]

{ #category : 'test day testing' }
HebrewCalendarDefinitionTest >> testIsYomShishi [

	self assert: (calendar isYomShishi: YomShishi)
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testIyyar [

	self assert: calendar iyyar = Iyyar
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testIyyarName [

	self assert: calendar iyyarName = 'Iyyar'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testIyyarNumber [

	self assert: calendar iyyarNumber = 2
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testKislev [

	self assert: calendar kislev = Kislev
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testKislevName [

	self assert: calendar kislevName = 'Kislev'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testKislevNumber [

	self assert: calendar kislevNumber = 9
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testLastMonth [

	self assert: calendar lastMonth = Elul
]

{ #category : 'test month of year accessing' }
HebrewCalendarDefinitionTest >> testLastMonthOf [
	| year |
	year := 5767 asHebrewYear.
	self assert: (calendar lastMonthOf: year) = (Elul , 5767).
	year := 5765 asHebrewYear.
	self assert: (calendar lastMonthOf: year) = (Elul , 5765)
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testMarheshvan [

	self assert: calendar marheshvan = Marheshvan
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testMarheshvanName [

	self assert: calendar marheshvanName = 'Marheshvan'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testMarheshvanNumber [

	self assert: calendar marheshvanNumber = 8
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testMaximumNumberOfDaysInOneYear [
		
	self assert: calendar maximumNumberOfDaysInOneYear = 385 daysMeasure
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testMonthNamed [

	self
		assert: (calendar monthNamed: 'Nisan') = Nisan;
		assert: (calendar monthNamed: 'Iyyar') = Iyyar;
		assert: (calendar monthNamed: 'Sivan') = Sivan;
		assert: (calendar monthNamed: 'Tammuz') = Tammuz;
		assert: (calendar monthNamed: 'Av') = Av;
		assert: (calendar monthNamed: 'Elul') = Elul;
		assert: (calendar monthNamed: 'Tishri') = Tishri;
		assert: (calendar monthNamed: 'Marheshvan') = Marheshvan;
		assert: (calendar monthNamed: 'Kislev') = Kislev;
		assert: (calendar monthNamed: 'Tevet') = Tevet;
		assert: (calendar monthNamed: 'Shevat') = Shevat;
		assert: (calendar monthNamed: 'Adar') = Adar;
		assert: (calendar monthNamed: 'Adar I') = AdarI;
		assert: (calendar monthNamed: 'Adar II') = AdarII.
		
	self
		should: [ (ChaltenEnvironment calendarNamed: #GregorianCalendar) monthNamed: 'invalid name' ]
		raise: InvalidMonthNameException
		withExceptionDo: [ :ex | self assert: ex description = 'invalid name is an invalid name for a month' ]
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testMonthNumbered [

	self
		assert: (calendar monthNumbered: 1) = Nisan;
		assert: (calendar monthNumbered: 2) = Iyyar;
		assert: (calendar monthNumbered: 3) = Sivan;
		assert: (calendar monthNumbered: 4) = Tammuz;
		assert: (calendar monthNumbered: 5) = Av;
		assert: (calendar monthNumbered: 6) = Elul;
		assert: (calendar monthNumbered: 7) = Tishri;
		assert: (calendar monthNumbered: 8) = Marheshvan;
		assert: (calendar monthNumbered: 9) = Kislev;
		assert: (calendar monthNumbered: 10) = Tevet;
		assert: (calendar monthNumbered: 11) = Shevat;
		assert: (calendar monthNumbered: 12) = Adar;
		assert: (calendar monthNumbered: 13) = AdarII
]

{ #category : 'test global variables' }
HebrewCalendarDefinitionTest >> testMonthsGlobalVariables [

	self
		assert: Nisan = calendar nisan;
		assert: Iyyar = calendar iyyar;
		assert: Sivan = calendar sivan;
		assert: Tammuz = calendar tammuz;
		assert: Av = calendar av;
		assert: Elul = calendar elul;
		assert: Tishri = calendar tishri;
		assert: Marheshvan = calendar marheshvan;
		assert: Kislev = calendar kislev;
		assert: Tevet = calendar tevet;
		assert: Shevat = calendar shevat;
		assert: AdarI = calendar adarI;
		assert: AdarII = calendar adarII;
		assert: Adar = calendar adar
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testNisan [

	self assert: calendar nisan = Nisan
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testNisanName [

	self assert: calendar nisanName = 'Nisan'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testNisanNumber [

	self assert: calendar nisanNumber = 1
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testNow [
	| now nowInOneSecond |
	now := calendar now.
	(Delay forSeconds: 1) wait.
	nowInOneSecond := calendar now.
	self assert: now < nowInOneSecond.
	self assert: ((now distanceTo: nowInOneSecond) convertTo: TimeUnits second) truncated = 1 secondMeasure
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testNumberOfDaysIn [

	self assert: (calendar numberOfDaysIn: 5775 asHebrewYear) = 354 daysMeasure
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testNumberOfDaysPerWeek [
	self assert: calendar numberOfDaysPerWeek = 7 daysMeasure
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testNumberOfMonthsPerYear [
	self assert: calendar numberOfMonthsPerYear = 13 monthsMeasure
]

{ #category : 'test printing' }
HebrewCalendarDefinitionTest >> testPrintString [

	self assert: calendar printString  = 'Hebrew Calendar'
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testShevat [

	self assert: calendar shevat = Shevat
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testShevatName [

	self assert: calendar shevatName = 'Shevat'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testShevatNumber [

	self assert: calendar shevatNumber = 11
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testSinceFirstDayOfWeek [
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := calendar yomRishon.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (calendar sinceFirstDayOfWeek: numberOfDays) = currentDay.
			currentDay := currentDay next ]
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testSinceYomRishon [
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := calendar yomRishon.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (calendar sinceYomRishon: numberOfDays) = currentDay.
			currentDay := currentDay next ]
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testSivan [

	self assert: calendar sivan = Sivan
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testSivanName [

	self assert: calendar sivanName = 'Sivan'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testSivanNumber [

	self assert: calendar sivanNumber = 3
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testTammuz [

	self assert: calendar tammuz = Tammuz
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testTammuzName [

	self assert: calendar tammuzName = 'Tammuz'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testTammuzNumber [

	self assert: calendar tammuzNumber = 4
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testTevet [

	self assert: calendar tevet = Tevet
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testTevetName [

	self assert: calendar tevetName = 'Tevet'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testTevetNumber [

	self assert: calendar tevetNumber = 10
]

{ #category : 'test months accessing' }
HebrewCalendarDefinitionTest >> testTishri [

	self assert: calendar tishri = Tishri
]

{ #category : 'test month names' }
HebrewCalendarDefinitionTest >> testTishriName [

	self assert: calendar tishriName = 'Tishri'
]

{ #category : 'test month numbers' }
HebrewCalendarDefinitionTest >> testTishriNumber [

	self assert: calendar tishriNumber = 7
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testToday [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar today 
				= (calendar convertToHebrewDate: gregorianToday)
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testTomorrow [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar tomorrow 
				= (calendar convertToHebrewDate: gregorianToday) next
]

{ #category : 'test dates accessing' }
HebrewCalendarDefinitionTest >> testYesterday [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar yesterday 
				= (calendar convertToHebrewDate: gregorianToday) previous
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testYomHamishi [

	self assert: calendar yomHamishi = YomHamishi
]

{ #category : 'test day names' }
HebrewCalendarDefinitionTest >> testYomHamishiName [

	self assert: calendar yomHamishiName = 'yom hamishi'
]

{ #category : 'test day positions in week' }
HebrewCalendarDefinitionTest >> testYomHamishiPositionInWeek [

	self assert: calendar yomHamishiPositionInWeek = 5
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testYomRevii [

	self assert: calendar yomRevii = YomRevii
]

{ #category : 'test day names' }
HebrewCalendarDefinitionTest >> testYomReviiName [

	self assert: calendar yomReviiName = 'yom revi`i'
]

{ #category : 'test day positions in week' }
HebrewCalendarDefinitionTest >> testYomReviiPositionInWeek [

	self assert: calendar yomReviiPositionInWeek = 4
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testYomRishon [

	self assert: calendar yomRishon = YomRishon
]

{ #category : 'test day names' }
HebrewCalendarDefinitionTest >> testYomRishonName [

	self assert: calendar yomRishonName = 'yom rishon'
]

{ #category : 'test day positions in week' }
HebrewCalendarDefinitionTest >> testYomRishonPositionInWeek [

	self assert: calendar yomRishonPositionInWeek = 1
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testYomShabbat [

	self assert: calendar yomShabbat = YomShabbat
]

{ #category : 'test day names' }
HebrewCalendarDefinitionTest >> testYomShabbatName [

	self assert: calendar yomShabbatName = 'yom shabbat'
]

{ #category : 'test day positions in week' }
HebrewCalendarDefinitionTest >> testYomShabbatPositionInWeek [

	self assert: calendar yomShabbatPositionInWeek = 7
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testYomShelishi [

	self assert: calendar yomShelishi = YomShelishi
]

{ #category : 'test day names' }
HebrewCalendarDefinitionTest >> testYomShelishiName [

	self assert: calendar yomShelishiName = 'yom shelishi'
]

{ #category : 'test day positions in week' }
HebrewCalendarDefinitionTest >> testYomShelishiPositionInWeek [

	self assert: calendar yomShelishiPositionInWeek = 3
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testYomSheni [

	self assert: calendar yomSheni = YomSheni
]

{ #category : 'test day names' }
HebrewCalendarDefinitionTest >> testYomSheniName [

	self assert: calendar yomSheniName = 'yom sheni'
]

{ #category : 'test day positions in week' }
HebrewCalendarDefinitionTest >> testYomSheniPositionInWeek [

	self assert: calendar yomSheniPositionInWeek = 2
]

{ #category : 'test days accessing' }
HebrewCalendarDefinitionTest >> testYomShishi [

	self assert: calendar yomShishi = YomShishi
]

{ #category : 'test day names' }
HebrewCalendarDefinitionTest >> testYomShishiName [

	self assert: calendar yomShishiName = 'yom shishi'
]

{ #category : 'test day positions in week' }
HebrewCalendarDefinitionTest >> testYomShishiPositionInWeek [

	self assert: calendar yomShishiPositionInWeek = 6
]
