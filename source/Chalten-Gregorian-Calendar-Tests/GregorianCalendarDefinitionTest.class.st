Class {
	#name : 'GregorianCalendarDefinitionTest',
	#superclass : 'TestCase',
	#instVars : [
		'calendar'
	],
	#category : 'Chalten-Gregorian-Calendar-Tests',
	#package : 'Chalten-Gregorian-Calendar-Tests'
}

{ #category : 'running' }
GregorianCalendarDefinitionTest >> setUp [

	calendar := ChaltenEnvironment calendarNamed: #GregorianCalendar
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testAmountOfDaysPerWeek [

	self assert: calendar amountOfDaysPerWeek = 7
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testAmountOfMonthsInLeapYears [

	self assert: calendar amountOfMonthsInLeapYears = 12
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testAmountOfMonthsInNonleapYears [

	self assert: calendar amountOfMonthsInNonleapYears = 12
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testAmountOfMonthsPerYear [

	self assert: calendar amountOfMonthsPerYear = 12
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testApril [

	self assert: calendar april = April
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testAprilName [

	self assert: calendar aprilName = 'April'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testAprilNumber [

	self assert: calendar aprilNumber = 4
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testAugust [

	self assert: calendar august = August
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testAugustName [

	self assert: calendar augustName = 'August'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testAugustNumber [

	self assert: calendar augustNumber = 8
]

{ #category : 'test converting' }
GregorianCalendarDefinitionTest >> testConvert [

	self assert: (calendar convert: January fourteenth, 2005) = (January fourteenth, 2005).
	self assert: (calendar convert: March fourteenth, 2005) = (March fourteenth, 2005).
	self assert: (calendar convert: September eighteenth, 1999) = (September eighteenth, 1999).
	self assert: (calendar convert: October twentyfifth, 2008) = (October twentyfifth, 2008).
	self assert: (calendar convert: December fifteenth, 2015) = (December fifteenth, 2015).
	
	self assert: (calendar convert: (January fourteenth, 2005 at: TimeOfDay noon)) =
		(January fourteenth, 2005 at: TimeOfDay noon).
	self assert: (calendar convert: (March fourteenth, 2005 at: TimeOfDay noon)) =
		(March fourteenth, 2005 at: TimeOfDay noon).
	self assert: (calendar convert: (September eighteenth, 1999 at: TimeOfDay noon)) =
		(September eighteenth, 1999 at: TimeOfDay noon).
	self assert: (calendar convert: (October twentyfifth, 2008 at: TimeOfDay noon)) =
		(October twentyfifth, 2008 at: TimeOfDay noon).
	self assert: (calendar convert: (December fifteenth, 2015 at: TimeOfDay noon)) =
		(December fifteenth, 2015 at: TimeOfDay noon).
	
	self
		should: [ calendar convert: 1 ]
		raise: Error
		withExceptionDo: [ :ex | self assert: ex description = 'Error: 1 can`t be converted to Date nor DateTime' ]
]

{ #category : 'test converting' }
GregorianCalendarDefinitionTest >> testConvertToSmalltalkDate [

	| gregorianDate smalltalkDate |
	gregorianDate := FixedDate 
		yearNumber: 2007
		monthNumber: 2
		dayNumber: 21
		calendar: calendar.
	smalltalkDate := Date 
		newDay: 21
		month: 2
		year: 2007.
		
	self assert: (calendar convertToSmalltalkDate: gregorianDate) = smalltalkDate
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testCurrentDayOfMonth [
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: calendar.
	self 
		assert: calendar currentDayOfMonth = gregorianToday dayOfMonth
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testCurrentMonth [
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: calendar.
	self assert: calendar currentMonth = gregorianToday month
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testCurrentMonthOfYear [
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: calendar.
	self 
		assert: calendar currentMonthOfYear = gregorianToday monthOfYear
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testCurrentYear [
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: calendar.
	self assert: calendar currentYear = gregorianToday year
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testDateFromFixed [
	| januaryFirstOf1 januaryFifthOf1 januaryFirstOf2 february29Of4 janauryFirstOf5 |
	januaryFirstOf1 := January first , 1.
	januaryFifthOf1 := January fifth , 1.
	januaryFirstOf2 := January first , 2.
	february29Of4 := February twentyninth , 4.
	janauryFirstOf5 := January first , 5.
	self assert: (calendar dateFromNumberOfDays: 1) = januaryFirstOf1.
	self assert: (calendar dateFromNumberOfDays: 5) = januaryFifthOf1.
	self 
		assert: (calendar dateFromNumberOfDays: 366) = januaryFirstOf2.
	self 
		assert: (calendar dateFromNumberOfDays: 1155) = february29Of4.
	self 
		assert: (calendar dateFromNumberOfDays: 1462) = janauryFirstOf5
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testDayNamed [

	self
		assert: (calendar dayNamed: 'Sunday') = Sunday;
		assert: (calendar dayNamed: 'Monday') = Monday;
		assert: (calendar dayNamed: 'Tuesday') = Tuesday;
		assert: (calendar dayNamed: 'Wednesday') = Wednesday;
		assert: (calendar dayNamed: 'Thursday') = Thursday;
		assert: (calendar dayNamed: 'Friday') = Friday;
		assert: (calendar dayNamed: 'Saturday') = Saturday
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testDayOf [

	self assert: (calendar dayOf: May fourth, 2014) = Sunday
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testDayPositionedInWeek [

	self
		assert: (calendar dayPositionedInWeek: 1) = Sunday;
		assert: (calendar dayPositionedInWeek: 2) = Monday;
		assert: (calendar dayPositionedInWeek: 3) = Tuesday;
		assert: (calendar dayPositionedInWeek: 4) = Wednesday;
		assert: (calendar dayPositionedInWeek: 5) = Thursday;
		assert: (calendar dayPositionedInWeek: 6) = Friday;
		assert: (calendar dayPositionedInWeek: 7) = Saturday
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testDaysFromEpochTo [
	| januaryFirstOf0 januaryFirstOf1 januarySecondOf1 januaryFifteenthOf1 januaryFirstOf2 januaryFirstOf5 |
	januaryFirstOf0 := January first , 0.
	januaryFirstOf1 := January first , 1.
	januarySecondOf1 := January second , 1.
	januaryFifteenthOf1 := January fifteenth , 1.
	januaryFirstOf2 := January first , 2.
	januaryFirstOf5 := January first , 5.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFirstOf0) = 366 daysMeasure negated.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFirstOf1) = 0 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: januarySecondOf1) = 1 dayMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFifteenthOf1) = 14 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFirstOf2) = 365 daysMeasure.
	self assert: (calendar numberOfDaysFromEpochTo: januaryFirstOf5) = 1461 daysMeasure
]

{ #category : 'test global variables' }
GregorianCalendarDefinitionTest >> testDaysGlobalVariables [

	self
		assert: Sunday = calendar sunday;
		assert: Monday = calendar monday;
		assert: Tuesday = calendar tuesday;
		assert: Wednesday = calendar wednesday;
		assert: Thursday = calendar thursday;
		assert: Friday = calendar friday;
		assert: Saturday = calendar saturday
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testDecember [

	self assert: calendar december = December
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testDecemberName [

	self assert: calendar decemberName = 'December'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testDecemberNumber [

	self assert: calendar decemberNumber = 12
]

{ #category : 'test year querying' }
GregorianCalendarDefinitionTest >> testDistanceInYearsFromTo [

	self assert: (calendar
		distanceInYearsFrom: 2012 asGregorianYear
		to: 2015 asGregorianYear) = 3 yearsMeasure
]

{ #category : 'test accessing' }
GregorianCalendarDefinitionTest >> testEpoch [

	self assert: calendar epoch = 1
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testFebruary [

	self assert: calendar february = February
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testFebruaryName [

	self assert: calendar februaryName = 'February'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testFebruaryNumber [

	self assert: calendar februaryNumber = 2
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testFirstMonth [

	self assert: calendar firstMonth = January
]

{ #category : 'test month of year accessing' }
GregorianCalendarDefinitionTest >> testFirstMonthOf [
	| year |
	year := 2007 asGregorianYear.
	self assert: (calendar firstMonthOf: year) = (January , 2007)
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testFixedFromDate [
	| januaryFirstOf1 novemberTwelveOf1945 |
	januaryFirstOf1 := January first , 1.
	novemberTwelveOf1945 := November twelfth , 1945.
	self
		assert: (calendar numberOfDaysFromDate: januaryFirstOf1) = 1;
		assert: (calendar numberOfDaysFromDate: novemberTwelveOf1945) 
					= 710347
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testFriday [

	self assert: calendar friday = Friday
]

{ #category : 'test day names' }
GregorianCalendarDefinitionTest >> testFridayName [

	self assert: calendar fridayName = 'Friday'
]

{ #category : 'test day positions in week' }
GregorianCalendarDefinitionTest >> testFridayPositionInWeek [

	self assert: calendar fridayPositionInWeek = 6
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsApril [

	self assert: (calendar isApril: April)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsAugust [

	self assert: (calendar isAugust: August)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsDecember [

	self assert: (calendar isDecember: December)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsFebruary [

	self assert: (calendar isFebruary: February)
]

{ #category : 'test year testing' }
GregorianCalendarDefinitionTest >> testIsFirstMonthOfYear [

	self assert: (calendar isFirstMonthOfYear: January).
	self deny: (calendar isFirstMonthOfYear: May).
	self deny: (calendar isFirstMonthOfYear: December)
]

{ #category : 'test day testing' }
GregorianCalendarDefinitionTest >> testIsFriday [

	self assert: (calendar isFriday: Friday)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsJanuary [

	self assert: (calendar isJanuary: January)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsJuly [

	self assert: (calendar isJuly: July)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsJune [

	self assert: (calendar isJune: June)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsMarch [

	self assert: (calendar isMarch: March)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsMay [

	self assert: (calendar isMay: May)
]

{ #category : 'test day testing' }
GregorianCalendarDefinitionTest >> testIsMonday [

	self assert: (calendar isMonday: Monday)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsNovember [

	self assert: (calendar isNovember: November)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsOctober [

	self assert: (calendar isOctober: October)
]

{ #category : 'test day testing' }
GregorianCalendarDefinitionTest >> testIsSaturday [

	self assert: (calendar isSaturday: Saturday)
]

{ #category : 'test month testing' }
GregorianCalendarDefinitionTest >> testIsSeptember [

	self assert: (calendar isSeptember: September)
]

{ #category : 'test day testing' }
GregorianCalendarDefinitionTest >> testIsSunday [

	self assert: (calendar isSunday: Sunday)
]

{ #category : 'test day testing' }
GregorianCalendarDefinitionTest >> testIsThursday [

	self assert: (calendar isThursday: Thursday)
]

{ #category : 'test day testing' }
GregorianCalendarDefinitionTest >> testIsTuesday [

	self assert: (calendar isTuesday: Tuesday)
]

{ #category : 'test day testing' }
GregorianCalendarDefinitionTest >> testIsWednesday [

	self assert: (calendar isWednesday: Wednesday)
]

{ #category : 'test year testing' }
GregorianCalendarDefinitionTest >> testIsYearNumberLeap [

	self
		assert: (calendar isYearNumberLeap: 1904);
		assert: (calendar isYearNumberLeap: 1908);
		assert: (calendar isYearNumberLeap: 1992);
		assert: (calendar isYearNumberLeap: 2000);
		assert: (calendar isYearNumberLeap: 2004).

	self
		deny: (calendar isYearNumberLeap: 1900);
		deny: (calendar isYearNumberLeap: 1915);
		deny: (calendar isYearNumberLeap: 1991);
		deny: (calendar isYearNumberLeap: 2007);
		deny: (calendar isYearNumberLeap: 2100)
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testJanuary [

	self assert: calendar january = January
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testJanuaryName [

	self assert: calendar januaryName = 'January'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testJanuaryNumber [

	self assert: calendar januaryNumber = 1
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testJuly [

	self assert: calendar july = July
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testJulyName [

	self assert: calendar julyName = 'July'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testJulyNumber [

	self assert: calendar julyNumber = 7
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testJune [

	self assert: calendar june = June
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testJuneName [

	self assert: calendar juneName = 'June'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testJuneNumber [

	self assert: calendar juneNumber = 6
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testLastMonth [

	self assert: calendar lastMonth = December
]

{ #category : 'test month of year accessing' }
GregorianCalendarDefinitionTest >> testLastMonthOf [
	| year |
	year := 2007 asGregorianYear.
	self assert: (calendar lastMonthOf: year) = (December , 2007)
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testMarch [

	self assert: calendar march = March
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testMarchName [

	self assert: calendar marchName = 'March'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testMarchNumber [

	self assert: calendar marchNumber = 3
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testMaximumNumberOfDaysInOneYear [

	self assert: calendar maximumNumberOfDaysInOneYear = 366 daysMeasure
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testMay [

	self assert: calendar may = May
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testMayName [

	self assert: calendar mayName = 'May'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testMayNumber [

	self assert: calendar mayNumber = 5
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testMonday [

	self assert: calendar monday = Monday
]

{ #category : 'test day names' }
GregorianCalendarDefinitionTest >> testMondayName [

	self assert: calendar mondayName = 'Monday'
]

{ #category : 'test day positions in week' }
GregorianCalendarDefinitionTest >> testMondayPositionInWeek [

	self assert: calendar mondayPositionInWeek = 2
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testMonthNamed [

	self
		assert: (calendar monthNamed: 'January') = January;
		assert: (calendar monthNamed: 'February') = February;
		assert: (calendar monthNamed: 'March') = March;
		assert: (calendar monthNamed: 'April') = April;
		assert: (calendar monthNamed: 'May') = May;
		assert: (calendar monthNamed: 'June') = June;
		assert: (calendar monthNamed: 'July') = July;
		assert: (calendar monthNamed: 'August') = August;
		assert: (calendar monthNamed: 'September') = September;
		assert: (calendar monthNamed: 'October') = October;
		assert: (calendar monthNamed: 'November') = November;
		assert: (calendar monthNamed: 'December') = December.
		
	self
		should: [ calendar monthNamed: 'invalid name' ]
		raise: InvalidMonthNameException
		withExceptionDo: [ :ex | self assert: ex description = 'invalid name is an invalid name for a month' ]
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testMonthNumbered [

	self
		assert: (calendar monthNumbered: 1) = January;
		assert: (calendar monthNumbered: 2) = February;
		assert: (calendar monthNumbered: 3) = March;
		assert: (calendar monthNumbered: 4) = April;
		assert: (calendar monthNumbered: 5) = May;
		assert: (calendar monthNumbered: 6) = June;
		assert: (calendar monthNumbered: 7) = July;
		assert: (calendar monthNumbered: 8) = August;
		assert: (calendar monthNumbered: 9) = September;
		assert: (calendar monthNumbered: 10) = October;
		assert: (calendar monthNumbered: 11) = November;
		assert: (calendar monthNumbered: 12) = December
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testMonthsForLeapYears [

	| months |
	months := Array new: 12.
	months at: 1 put: January.
	months at: 2 put: February.
	months at: 3 put: March.
	months at: 4 put: April.
	months at: 5 put: May.
	months at: 6 put: June.
	months at: 7 put: July.
	months at: 8 put: August.
	months at: 9 put: September.
	months at: 10 put: October.
	months at: 11 put: November.
	months at: 12 put: December.
	
	self assert: calendar monthsForLeapYears = months
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testMonthsForNonleapYears [

	| months |
	months := Array new: 12.
	months at: 1 put: January.
	months at: 2 put: February.
	months at: 3 put: March.
	months at: 4 put: April.
	months at: 5 put: May.
	months at: 6 put: June.
	months at: 7 put: July.
	months at: 8 put: August.
	months at: 9 put: September.
	months at: 10 put: October.
	months at: 11 put: November.
	months at: 12 put: December.
	
	self assert: calendar monthsForNonleapYears = months
]

{ #category : 'test global variables' }
GregorianCalendarDefinitionTest >> testMonthsGlobalVariables [

	self
		assert: January = calendar january;
		assert: February = calendar february;
		assert: March = calendar march;
		assert: April = calendar april;
		assert: May = calendar may;
		assert: June = calendar june;
		assert: July = calendar july;
		assert: August = calendar august;
		assert: September = calendar september;
		assert: October = calendar october;
		assert: November = calendar november;
		assert: December = calendar december
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testNovember [

	self assert: calendar november = November
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testNovemberName [

	self assert: calendar novemberName = 'November'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testNovemberNumber [

	self assert: calendar novemberNumber = 11
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testNow [
	| now nowInTwoSeconds |
	now := calendar now.
	(Delay forSeconds: 1) wait.
	nowInTwoSeconds := calendar now.
	self assert: now < nowInTwoSeconds.
	self assert: ((now distanceTo: nowInTwoSeconds) convertTo: TimeUnits second) truncated = 1 secondMeasure
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testNumberOfDaysIn [

	self assert: (calendar numberOfDaysIn: 2014 asGregorianYear) = 365 daysMeasure
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testNumberOfDaysPerWeek [
	self assert: calendar numberOfDaysPerWeek = 7 daysMeasure
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testNumberOfMonthsPerYear [
	self assert: calendar numberOfMonthsPerYear = 12 monthsMeasure
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testOctober [

	self assert: calendar october = October
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testOctoberName [

	self assert: calendar octoberName = 'October'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testOctoberNumber [

	self assert: calendar octoberNumber = 10
]

{ #category : 'test printing' }
GregorianCalendarDefinitionTest >> testPrintString [

	self assert: calendar printString  = 'Gregorian Calendar'
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testSaturday [

	self assert: calendar saturday = Saturday
]

{ #category : 'test day names' }
GregorianCalendarDefinitionTest >> testSaturdayName [

	self assert: calendar saturdayName = 'Saturday'
]

{ #category : 'test day positions in week' }
GregorianCalendarDefinitionTest >> testSaturdayPositionInWeek [

	self assert: calendar saturdayPositionInWeek = 7
]

{ #category : 'test months accessing' }
GregorianCalendarDefinitionTest >> testSeptember [

	self assert: calendar september = September
]

{ #category : 'test month names' }
GregorianCalendarDefinitionTest >> testSeptemberName [

	self assert: calendar septemberName = 'September'
]

{ #category : 'test month numbers' }
GregorianCalendarDefinitionTest >> testSeptemberNumber [

	self assert: calendar septemberNumber = 9
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testSinceFirstDayOfWeek [
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := calendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (calendar sinceFirstDayOfWeek: numberOfDays) = currentDay.
			currentDay := currentDay next ]
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testSinceSunday [
	| currentDay zeroDays |
	zeroDays := 0 daysMeasure.
	currentDay := calendar sunday.
	(zeroDays to: 6 daysMeasure)
		do: [ :numberOfDays | 
			self assert: (calendar sinceSunday: numberOfDays) = currentDay.
			currentDay := currentDay next ]
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testSunday [

	self assert: calendar sunday = Sunday
]

{ #category : 'test day names' }
GregorianCalendarDefinitionTest >> testSundayName [

	self assert: calendar sundayName = 'Sunday'
]

{ #category : 'test day positions in week' }
GregorianCalendarDefinitionTest >> testSundayPositionInWeek [

	self assert: calendar sundayPositionInWeek = 1
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testTheBeginningOfTime [

	calendar theBeginningOfTime = TheBeginningOfTime
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testTheEndOfTime [

	calendar theEndOfTime = TheEndOfTime
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testThursday [

	self assert: calendar thursday = Thursday
]

{ #category : 'test day names' }
GregorianCalendarDefinitionTest >> testThursdayName [

	self assert: calendar thursdayName = 'Thursday'
]

{ #category : 'test day positions in week' }
GregorianCalendarDefinitionTest >> testThursdayPositionInWeek [

	self assert: calendar thursdayPositionInWeek = 5
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testToday [
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: calendar.
	self assert: calendar today = gregorianToday
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testTomorrow [
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: calendar.
	self assert: calendar tomorrow = gregorianToday next
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testTuesday [

	self assert: calendar tuesday = Tuesday
]

{ #category : 'test day names' }
GregorianCalendarDefinitionTest >> testTuesdayName [

	self assert: calendar tuesdayName = 'Tuesday'
]

{ #category : 'test day positions in week' }
GregorianCalendarDefinitionTest >> testTuesdayPositionInWeek [

	self assert: calendar tuesdayPositionInWeek = 3
]

{ #category : 'test days accessing' }
GregorianCalendarDefinitionTest >> testWednesday [

	self assert: calendar wednesday = Wednesday
]

{ #category : 'test day names' }
GregorianCalendarDefinitionTest >> testWednesdayName [

	self assert: calendar wednesdayName = 'Wednesday'
]

{ #category : 'test day positions in week' }
GregorianCalendarDefinitionTest >> testWednesdayPositionInWeek [

	self assert: calendar wednesdayPositionInWeek = 4
]

{ #category : 'test year accessing' }
GregorianCalendarDefinitionTest >> testYearNumberFromFixed [

	self assert: (calendar yearNumberFromFixed: 1) = 1.
	self assert: (calendar yearNumberFromFixed: 36) = 1.
	self assert: (calendar yearNumberFromFixed: 360) = 1.
	self assert: (calendar yearNumberFromFixed: 365) = 1.
	self assert: (calendar yearNumberFromFixed: 366) = 2.
	self assert: (calendar yearNumberFromFixed: 370) = 2.
	self assert: (calendar yearNumberFromFixed: 730) = 2.
	self assert: (calendar yearNumberFromFixed: 731) = 3.
	self assert: (calendar yearNumberFromFixed: 1095) = 3.
	self assert: (calendar yearNumberFromFixed: 1096) = 4.
	self assert: (calendar yearNumberFromFixed: 1461) = 4
]

{ #category : 'test dates accessing' }
GregorianCalendarDefinitionTest >> testYesterday [
	| today gregorianToday |
	today := Date today.
	gregorianToday := FixedDate 
				yearNumber: today year
				monthNumber: today monthIndex
				dayNumber: today dayOfMonth
				calendar: calendar.
	self assert: calendar yesterday = gregorianToday previous
]
