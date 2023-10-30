Class {
	#name : 'JulianCalendarDefinitionTest',
	#superclass : 'TestCase',
	#instVars : [
		'calendar'
	],
	#category : 'Chalten-Julian-Calendar-Tests',
	#package : 'Chalten-Julian-Calendar-Tests'
}

{ #category : 'running' }
JulianCalendarDefinitionTest >> setUp [

	calendar := ChaltenEnvironment calendarNamed: #JulianCalendar
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testAmountOfDaysPerWeek [

	self assert: calendar amountOfDaysPerWeek = 7
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testAmountOfMonthsInLeapYears [

	self assert: calendar amountOfMonthsInLeapYears = 12
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testAmountOfMonthsInNonleapYears [

	self assert: calendar amountOfMonthsInNonleapYears = 12
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testAmountOfMonthsPerYear [

	self assert: calendar amountOfMonthsPerYear = 12
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testApril [

	self assert: calendar april = JulianApril
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testAprilName [

	self assert: calendar aprilName = 'April'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testAprilNumber [

	self assert: calendar aprilNumber = 4
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testAugust [

	self assert: calendar august = JulianAugust
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testAugustName [

	self assert: calendar augustName = 'August'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testAugustNumber [

	self assert: calendar augustNumber = 8
]

{ #category : 'test converting' }
JulianCalendarDefinitionTest >> testConvert [

	self assert: (calendar convert: January fourteenth , 2005) = (JulianJanuary first , 2005).
	self assert: (calendar convert: March fourteenth , 2005) = (JulianMarch first , 2005).
	self assert: (calendar convert: September eighteenth , 1999) = (JulianSeptember fifth , 1999).
	self assert: (calendar convert: October twentyfifth , 2008) = (JulianOctober twelfth , 2008).
	self assert: (calendar convert: December fifteenth , 2015) = (JulianDecember second , 2015).
	
	self assert: (calendar convert: (January fourteenth , 2005 at: TimeOfDay noon)) =
		(JulianJanuary first , 2005 at: TimeOfDay noon).
	self assert: (calendar convert: (March fourteenth , 2005 at: TimeOfDay noon)) =
		(JulianMarch first , 2005 at: TimeOfDay noon).
	self assert: (calendar convert: (September eighteenth , 1999 at: TimeOfDay noon)) =
		(JulianSeptember fifth , 1999 at: TimeOfDay noon).
	self assert: (calendar convert: (October twentyfifth , 2008 at: TimeOfDay noon)) =
		(JulianOctober twelfth , 2008 at: TimeOfDay noon).
	self assert: (calendar convert: (December fifteenth , 2015 at: TimeOfDay noon)) =
		(JulianDecember second , 2015 at: TimeOfDay noon).
	
	self
		should: [ calendar convert: 1 ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex description = 'Error: 1 can`t be converted to Date nor DateTime' ]
]

{ #category : 'test converting' }
JulianCalendarDefinitionTest >> testConvertToSmalltalkDate [

	| julianDate smalltalkDate |

	julianDate := JulianFebruary twentyfirst, 2007.
	smalltalkDate := Date newDay: 6 month: 3 year: 2007.
	self assert: (calendar convertToSmalltalkDate: julianDate) = smalltalkDate
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testCurrentDayOfMonth [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentDayOfMonth 
				= (calendar convertToJulianDate: gregorianToday) dayOfMonth
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testCurrentMonth [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentMonth 
				= (calendar convertToJulianDate: gregorianToday) month
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testCurrentMonthOfYear [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentMonthOfYear 
				= (calendar convertToJulianDate: gregorianToday) monthOfYear
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testCurrentYear [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar currentYear 
				= (calendar convertToJulianDate: gregorianToday) year
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testDateFromFixed [
	| januaryThirdOf1 januarySeventhOf1 januaryThirdOf2 marchSecondOf4 janauryThirdOf5 |
	januaryThirdOf1 := JulianJanuary third , 1.
	januarySeventhOf1 := JulianJanuary seventh , 1.
	januaryThirdOf2 := JulianJanuary third , 2.
	marchSecondOf4 := JulianMarch second , 4.
	janauryThirdOf5 := JulianJanuary third , 5.
	self assert: (calendar dateFromNumberOfDays: 1) = januaryThirdOf1.
	self assert: (calendar dateFromNumberOfDays: 5) = januarySeventhOf1.
	self assert: (calendar dateFromNumberOfDays: 366) = januaryThirdOf2.
	self assert: (calendar dateFromNumberOfDays: 1155) = marchSecondOf4.
	self assert: (calendar dateFromNumberOfDays: 1462) = janauryThirdOf5
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testDayNamed [

	self
		assert: (calendar dayNamed: 'Sunday') = JulianSunday;
		assert: (calendar dayNamed: 'Monday') = JulianMonday;
		assert: (calendar dayNamed: 'Tuesday') = JulianTuesday;
		assert: (calendar dayNamed: 'Wednesday') = JulianWednesday;
		assert: (calendar dayNamed: 'Thursday') = JulianThursday;
		assert: (calendar dayNamed: 'Friday') = JulianFriday;
		assert: (calendar dayNamed: 'Saturday') = JulianSaturday
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testDayOf [

	self assert: (calendar dayOf: May fourth, 2014) = JulianSunday
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testDayPositionedInWeek [

	self
		assert: (calendar dayPositionedInWeek: 1) = JulianSunday;
		assert: (calendar dayPositionedInWeek: 2) = JulianMonday;
		assert: (calendar dayPositionedInWeek: 3) = JulianTuesday;
		assert: (calendar dayPositionedInWeek: 4) = JulianWednesday;
		assert: (calendar dayPositionedInWeek: 5) = JulianThursday;
		assert: (calendar dayPositionedInWeek: 6) = JulianFriday;
		assert: (calendar dayPositionedInWeek: 7) = JulianSaturday
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testDaysFromEpochTo [
	| januaryFirstOf1 januarySecondOf1 januaryFifteenthOf1 januaryFirstOf2 januaryFirstOf5 |
	januaryFirstOf1 := JulianJanuary first , 1.
	januarySecondOf1 := JulianJanuary second , 1.
	januaryFifteenthOf1 := JulianJanuary fifteenth , 1.
	januaryFirstOf2 := JulianJanuary first , 2.
	januaryFirstOf5 := JulianJanuary first , 5.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFirstOf1) = 2 daysMeasure negated.
	self assert: (calendar numberOfDaysFromEpochTo: januarySecondOf1) = 1 dayMeasure negated.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFifteenthOf1) = 12 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFirstOf2) = 363 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFirstOf5) = 1459 daysMeasure
]

{ #category : 'test global variables' }
JulianCalendarDefinitionTest >> testDaysGlobalVariables [

	self
		assert: JulianSunday = calendar sunday;
		assert: JulianMonday = calendar monday;
		assert: JulianTuesday = calendar tuesday;
		assert: JulianWednesday = calendar wednesday;
		assert: JulianThursday = calendar thursday;
		assert: JulianFriday = calendar friday;
		assert: JulianSaturday = calendar saturday
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testDecember [

	self assert: calendar december = JulianDecember
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testDecemberName [

	self assert: calendar decemberName = 'December'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testDecemberNumber [

	self assert: calendar decemberNumber = 12
]

{ #category : 'test year querying' }
JulianCalendarDefinitionTest >> testDistanceInYearsFromTo [

	self assert: (calendar
		distanceInYearsFrom: 2012 asJulianYear
		to: 2015 asJulianYear) = 3 yearsMeasure
]

{ #category : 'test accessing' }
JulianCalendarDefinitionTest >> testEpoch [

	self assert: calendar epoch = -1
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testFebruary [

	self assert: calendar february = JulianFebruary
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testFebruaryName [

	self assert: calendar februaryName = 'February'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testFebruaryNumber [

	self assert: calendar februaryNumber = 2
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testFirstMonth [

	self assert: calendar firstMonth = JulianJanuary
]

{ #category : 'test month of year accessing' }
JulianCalendarDefinitionTest >> testFirstMonthOf [
	| year |
	year := 2007 asJulianYear.
	self assert: (calendar firstMonthOf: year) = (JulianJanuary , 2007)
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testFixedFromDate [
	| januaryFirstOf1 novemberTwelveOf1945 |
	januaryFirstOf1 := JulianJanuary first , 1.
	novemberTwelveOf1945 := JulianJanuary twelfth , 1945.
	calendar.
	self
		assert: (calendar numberOfDaysFromDate: januaryFirstOf1) = -1;
		assert: (calendar numberOfDaysFromDate: novemberTwelveOf1945) 
					= 710056
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testFriday [

	self assert: calendar friday = JulianFriday
]

{ #category : 'test day names' }
JulianCalendarDefinitionTest >> testFridayName [

	self assert: calendar fridayName = 'Friday'
]

{ #category : 'test day positions in week' }
JulianCalendarDefinitionTest >> testFridayPositionInWeek [

	self assert: calendar fridayPositionInWeek = 6
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsApril [

	self assert: (calendar isApril: JulianApril)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsAugust [

	self assert: (calendar isAugust: JulianAugust)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsDecember [

	self assert: (calendar isDecember: JulianDecember)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsFebruary [

	self assert: (calendar isFebruary: JulianFebruary)
]

{ #category : 'test year testing' }
JulianCalendarDefinitionTest >> testIsFirstMonthOfYear [

	self assert: (calendar isFirstMonthOfYear: JulianJanuary).
	self deny: (calendar isFirstMonthOfYear: JulianMay).
	self deny: (calendar isFirstMonthOfYear: JulianDecember)
]

{ #category : 'test day testing' }
JulianCalendarDefinitionTest >> testIsFriday [

	self assert: (calendar isFriday: JulianFriday)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsJanuary [

	self assert: (calendar isJanuary: JulianJanuary)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsJuly [

	self assert: (calendar isJuly: JulianJuly)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsJune [

	self assert: (calendar isJune: JulianJune)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsMarch [

	self assert: (calendar isMarch: JulianMarch)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsMay [

	self assert: (calendar isMay: JulianMay)
]

{ #category : 'test day testing' }
JulianCalendarDefinitionTest >> testIsMonday [

	self assert: (calendar isMonday: JulianMonday)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsNovember [

	self assert: (calendar isNovember: JulianNovember)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsOctober [

	self assert: (calendar isOctober: JulianOctober)
]

{ #category : 'test day testing' }
JulianCalendarDefinitionTest >> testIsSaturday [

	self assert: (calendar isSaturday: JulianSaturday)
]

{ #category : 'test month testing' }
JulianCalendarDefinitionTest >> testIsSeptember [

	self assert: (calendar isSeptember: JulianSeptember)
]

{ #category : 'test day testing' }
JulianCalendarDefinitionTest >> testIsSunday [

	self assert: (calendar isSunday: JulianSunday)
]

{ #category : 'test day testing' }
JulianCalendarDefinitionTest >> testIsThursday [

	self assert: (calendar isThursday: JulianThursday)
]

{ #category : 'test day testing' }
JulianCalendarDefinitionTest >> testIsTuesday [

	self assert: (calendar isTuesday: JulianTuesday)
]

{ #category : 'test day testing' }
JulianCalendarDefinitionTest >> testIsWednesday [

	self assert: (calendar isWednesday: JulianWednesday)
]

{ #category : 'test year testing' }
JulianCalendarDefinitionTest >> testIsYearNumberLeap [

	self
		assert: (calendar isYearNumberLeap: -1);
		assert: (calendar isYearNumberLeap: 1900);
		assert: (calendar isYearNumberLeap: 1904);
		assert: (calendar isYearNumberLeap: 1908);
		assert: (calendar isYearNumberLeap: 1992);
		assert: (calendar isYearNumberLeap: 2000);
		assert: (calendar isYearNumberLeap: 2004);
		assert: (calendar isYearNumberLeap: 2100).

	self
		deny: (calendar isYearNumberLeap: -4);
		deny: (calendar isYearNumberLeap: 1915);
		deny: (calendar isYearNumberLeap: 1991);
		deny: (calendar isYearNumberLeap: 2007)
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testJanuary [

	self assert: calendar january = JulianJanuary
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testJanuaryName [

	self assert: calendar januaryName = 'January'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testJanuaryNumber [

	self assert: calendar januaryNumber = 1
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testJuly [

	self assert: calendar july = JulianJuly
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testJulyName [

	self assert: calendar julyName = 'July'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testJulyNumber [

	self assert: calendar julyNumber = 7
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testJune [

	self assert: calendar june = JulianJune
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testJuneName [

	self assert: calendar juneName = 'June'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testJuneNumber [

	self assert: calendar juneNumber = 6
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testLastMonth [

	self assert: calendar lastMonth = JulianDecember
]

{ #category : 'test month of year accessing' }
JulianCalendarDefinitionTest >> testLastMonthOf [
	| year |
	year := 2007 asJulianYear.
	self assert: (calendar lastMonthOf: year) = (JulianDecember , 2007)
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testMarch [

	self assert: calendar march = JulianMarch
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testMarchName [

	self assert: calendar marchName = 'March'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testMarchNumber [

	self assert: calendar marchNumber = 3
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testMaximumNumberOfDaysInOneYear [

	self assert: calendar maximumNumberOfDaysInOneYear = 366 daysMeasure
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testMay [

	self assert: calendar may = JulianMay
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testMayName [

	self assert: calendar mayName = 'May'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testMayNumber [

	self assert: calendar mayNumber = 5
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testMonday [

	self assert: calendar monday = JulianMonday
]

{ #category : 'test day names' }
JulianCalendarDefinitionTest >> testMondayName [

	self assert: calendar mondayName = 'Monday'
]

{ #category : 'test day positions in week' }
JulianCalendarDefinitionTest >> testMondayPositionInWeek [

	self assert: calendar mondayPositionInWeek = 2
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testMonthNamed [

	self
		assert: (calendar monthNamed: 'January') = JulianJanuary;
		assert: (calendar monthNamed: 'February') = JulianFebruary;
		assert: (calendar monthNamed: 'March') = JulianMarch;
		assert: (calendar monthNamed: 'April') = JulianApril;
		assert: (calendar monthNamed: 'May') = JulianMay;
		assert: (calendar monthNamed: 'June') = JulianJune;
		assert: (calendar monthNamed: 'July') = JulianJuly;
		assert: (calendar monthNamed: 'August') = JulianAugust;
		assert: (calendar monthNamed: 'September') = JulianSeptember;
		assert: (calendar monthNamed: 'October') = JulianOctober;
		assert: (calendar monthNamed: 'November') = JulianNovember;
		assert: (calendar monthNamed: 'December') = JulianDecember.
		
	self
		should: [ (ChaltenEnvironment calendarNamed: #GregorianCalendar) monthNamed: 'invalid name' ]
		raise: InvalidMonthNameException
		withExceptionDo: [ :ex | self assert: ex description = 'invalid name is an invalid name for a month' ]
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testMonthNumbered [

	self
		assert: (calendar monthNumbered: 1) = JulianJanuary;
		assert: (calendar monthNumbered: 2) = JulianFebruary;
		assert: (calendar monthNumbered: 3) = JulianMarch;
		assert: (calendar monthNumbered: 4) = JulianApril;
		assert: (calendar monthNumbered: 5) = JulianMay;
		assert: (calendar monthNumbered: 6) = JulianJune;
		assert: (calendar monthNumbered: 7) = JulianJuly;
		assert: (calendar monthNumbered: 8) = JulianAugust;
		assert: (calendar monthNumbered: 9) = JulianSeptember;
		assert: (calendar monthNumbered: 10) = JulianOctober;
		assert: (calendar monthNumbered: 11) = JulianNovember;
		assert: (calendar monthNumbered: 12) = JulianDecember
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testMonthsForLeapYears [

	| months |
	months := Array new: 12.
	months at: 1 put: JulianJanuary.
	months at: 2 put: JulianFebruary.
	months at: 3 put: JulianMarch.
	months at: 4 put: JulianApril.
	months at: 5 put: JulianMay.
	months at: 6 put: JulianJune.
	months at: 7 put: JulianJuly.
	months at: 8 put: JulianAugust.
	months at: 9 put: JulianSeptember.
	months at: 10 put: JulianOctober.
	months at: 11 put: JulianNovember.
	months at: 12 put: JulianDecember.
	
	self assert: calendar monthsForLeapYears = months
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testMonthsForNonleapYears [

	| months |
	months := Array new: 12.
	months at: 1 put: JulianJanuary.
	months at: 2 put: JulianFebruary.
	months at: 3 put: JulianMarch.
	months at: 4 put: JulianApril.
	months at: 5 put: JulianMay.
	months at: 6 put: JulianJune.
	months at: 7 put: JulianJuly.
	months at: 8 put: JulianAugust.
	months at: 9 put: JulianSeptember.
	months at: 10 put: JulianOctober.
	months at: 11 put: JulianNovember.
	months at: 12 put: JulianDecember.
	
	self assert: calendar monthsForNonleapYears = months
]

{ #category : 'test global variables' }
JulianCalendarDefinitionTest >> testMonthsGlobalVariables [

	self
		assert: JulianJanuary = calendar january;
		assert: JulianFebruary = calendar february;
		assert: JulianMarch = calendar march;
		assert: JulianApril = calendar april;
		assert: JulianMay = calendar may;
		assert: JulianJune = calendar june;
		assert: JulianJuly = calendar july;
		assert: JulianAugust = calendar august;
		assert: JulianSeptember = calendar september;
		assert: JulianOctober = calendar october;
		assert: JulianNovember = calendar november;
		assert: JulianDecember = calendar december
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testNovember [

	self assert: calendar november = JulianNovember
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testNovemberName [

	self assert: calendar novemberName = 'November'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testNovemberNumber [

	self assert: calendar novemberNumber = 11
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testNow [
	| now nowInTwoSeconds |
	now := calendar now.
	(Delay forSeconds: 1) wait.
	nowInTwoSeconds := calendar now.
	self assert: now < nowInTwoSeconds.
	self assert: ((now distanceTo: nowInTwoSeconds) convertTo: TimeUnits second) truncated = 1 secondMeasure
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testNumberOfDaysIn [

	self assert: (calendar numberOfDaysIn: 2014 asJulianYear) = 365 daysMeasure
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testNumberOfDaysPerWeek [
	self assert: calendar numberOfDaysPerWeek = 7 daysMeasure
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testNumberOfMonthsPerYear [
	self assert: calendar numberOfMonthsPerYear = 12 monthsMeasure
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testOctober [

	self assert: calendar october = JulianOctober
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testOctoberName [

	self assert: calendar octoberName = 'October'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testOctoberNumber [

	self assert: calendar octoberNumber = 10
]

{ #category : 'test printing' }
JulianCalendarDefinitionTest >> testPrintString [

	self assert: calendar printString  = 'Julian Calendar'
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testSaturday [

	self assert: calendar saturday = JulianSaturday
]

{ #category : 'test day names' }
JulianCalendarDefinitionTest >> testSaturdayName [

	self assert: calendar saturdayName = 'Saturday'
]

{ #category : 'test day positions in week' }
JulianCalendarDefinitionTest >> testSaturdayPositionInWeek [

	self assert: calendar saturdayPositionInWeek = 7
]

{ #category : 'test months accessing' }
JulianCalendarDefinitionTest >> testSeptember [

	self assert: calendar september = JulianSeptember
]

{ #category : 'test month names' }
JulianCalendarDefinitionTest >> testSeptemberName [

	self assert: calendar septemberName = 'September'
]

{ #category : 'test month numbers' }
JulianCalendarDefinitionTest >> testSeptemberNumber [

	self assert: calendar septemberNumber = 9
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testSinceFirstDayOfWeek [
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := calendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (calendar sinceFirstDayOfWeek: numberOfDays) = currentDay.
			currentDay := currentDay next ]
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testSinceSunday [
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := calendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (calendar sinceSunday: numberOfDays) = currentDay.
			currentDay := currentDay next ]
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testSunday [

	self assert: calendar sunday = JulianSunday
]

{ #category : 'test day names' }
JulianCalendarDefinitionTest >> testSundayName [

	self assert: calendar sundayName = 'Sunday'
]

{ #category : 'test day positions in week' }
JulianCalendarDefinitionTest >> testSundayPositionInWeek [

	self assert: calendar sundayPositionInWeek = 1
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testThursday [

	self assert: calendar thursday = JulianThursday
]

{ #category : 'test day names' }
JulianCalendarDefinitionTest >> testThursdayName [

	self assert: calendar thursdayName = 'Thursday'
]

{ #category : 'test day positions in week' }
JulianCalendarDefinitionTest >> testThursdayPositionInWeek [

	self assert: calendar thursdayPositionInWeek = 5
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testToday [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar today 
				= (calendar convertToJulianDate: gregorianToday)
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testTomorrow [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar tomorrow 
				= (calendar convertToJulianDate: gregorianToday) next
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testTuesday [

	self assert: calendar tuesday = JulianTuesday
]

{ #category : 'test day names' }
JulianCalendarDefinitionTest >> testTuesdayName [

	self assert: calendar tuesdayName = 'Tuesday'
]

{ #category : 'test day positions in week' }
JulianCalendarDefinitionTest >> testTuesdayPositionInWeek [

	self assert: calendar tuesdayPositionInWeek = 3
]

{ #category : 'test days accessing' }
JulianCalendarDefinitionTest >> testWednesday [

	self assert: calendar wednesday = JulianWednesday
]

{ #category : 'test day names' }
JulianCalendarDefinitionTest >> testWednesdayName [

	self assert: calendar wednesdayName = 'Wednesday'
]

{ #category : 'test day positions in week' }
JulianCalendarDefinitionTest >> testWednesdayPositionInWeek [

	self assert: calendar wednesdayPositionInWeek = 4
]

{ #category : 'test year accessing' }
JulianCalendarDefinitionTest >> testYearNumberFromFixed [

	self assert: (calendar yearNumberFromFixed: 1) = 1.
	self assert: (calendar yearNumberFromFixed: 36) = 1.
	self assert: (calendar yearNumberFromFixed: 360) = 1.
	self assert: (calendar yearNumberFromFixed: 365) = 2.
	self assert: (calendar yearNumberFromFixed: 366) = 2.
	self assert: (calendar yearNumberFromFixed: 370) = 2.
	self assert: (calendar yearNumberFromFixed: 730) = 3.
	self assert: (calendar yearNumberFromFixed: 731) = 3.
	self assert: (calendar yearNumberFromFixed: 1095) = 4.
	self assert: (calendar yearNumberFromFixed: 1096) = 4.
	self assert: (calendar yearNumberFromFixed: 1461) = 5
]

{ #category : 'test dates accessing' }
JulianCalendarDefinitionTest >> testYesterday [
	| smalltalkToday gregorianToday |
	smalltalkToday := Date today.
	gregorianToday := FixedDate 
				yearNumber: smalltalkToday year
				monthNumber: smalltalkToday monthIndex
				dayNumber: smalltalkToday dayOfMonth
				calendar: (ChaltenEnvironment calendarNamed: #GregorianCalendar).
	self assert: calendar yesterday 
				= (calendar convertToJulianDate: gregorianToday) previous
]
