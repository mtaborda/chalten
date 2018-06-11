"
A ChaltenYear is a year representation.

Instance Variables
	calendar:		<CalendarDefinition>
	number:		<Number>
	type:			<YearType>

calendar
	- The calendar that the year belongs to.

number
	- The year number.

type
	- The type, leap or nonleap.

"
Class {
	#name : #ChaltenYear,
	#superclass : #PointInTime,
	#instVars : [
		'number',
		'type',
		'calendar'
	],
	#classInstVars : [
		'leapType',
		'nonleapType'
	],
	#category : 'Chalten-Core-TimeModel'
}

{ #category : #'instance creation - private' }
ChaltenYear class >> createYear: aNumber calendar: aCalendar [

	^self new initializeNumber: aNumber type: (self typeFor: aNumber calendar: aCalendar) calendar: aCalendar
]

{ #category : #initialization }
ChaltenYear class >> initialize [

	super initialize.
	YearType subclasses do: [:class | class initializeUniqueInstance].
	self initializeLeapType.
	self initializeNonleapType
]

{ #category : #initialization }
ChaltenYear class >> initializeLeapType [

	leapType := LeapYearType new
]

{ #category : #initialization }
ChaltenYear class >> initializeNonleapType [

	nonleapType := NonleapYearType new
]

{ #category : #testing }
ChaltenYear class >> isYearNumberLeap: aNumber calendar: aCalendar [

	^aCalendar isYearNumberLeap: aNumber
]

{ #category : #'accessing - private' }
ChaltenYear class >> leapType [

	^leapType
]

{ #category : #'accessing - private' }
ChaltenYear class >> nonleapType [

	^nonleapType
]

{ #category : #'instance creation' }
ChaltenYear class >> number: aNumber calendar: aCalendar [

	aCalendar assertYearNumber: aNumber.
	^self createYear: aNumber calendar: aCalendar
]

{ #category : #querying }
ChaltenYear class >> typeFor: aNumber calendar: aCalendar [

	^(self isYearNumberLeap: aNumber calendar: aCalendar)
		ifTrue: [self leapType]
		ifFalse: [self nonleapType]
]

{ #category : #'magnitude protocol' }
ChaltenYear >> < aYear [

	self assertIsSameKindAs: aYear.
	^self number < aYear number
]

{ #category : #comparing }
ChaltenYear >> = anObject [

	^self == anObject 
		or: [ (anObject isKindOf: ChaltenYear) 
		and: [ self number = anObject number ]]
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> adar [

	^MonthOfYear year: self month: calendar adar
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> adarI [

	^MonthOfYear year: self month: calendar adarI
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> adarII [

	^MonthOfYear year: self month: calendar adarII
]

{ #category : #'accessing months' }
ChaltenYear >> amountOfMonths [

	^type amountOfMonthsIn: self
]

{ #category : #'accessing months' }
ChaltenYear >> amountOfMonthsInLeapYears [

	^calendar amountOfMonthsInLeapYears
]

{ #category : #'accessing months' }
ChaltenYear >> amountOfMonthsInNonleapYears [

	^calendar amountOfMonthsInNonleapYears
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> april [

	^MonthOfYear year: self month: calendar april
]

{ #category : #'months stream accessing' }
ChaltenYear >> arrayOfMonths [

	^type arrayOfMonthsOf: self
]

{ #category : #'months stream accessing' }
ChaltenYear >> arrayOfMonthsInLeapYears [

	^calendar monthsForLeapYears
]

{ #category : #'months stream accessing' }
ChaltenYear >> arrayOfMonthsInNonleapYears [

	^calendar monthsForNonleapYears
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> august [

	^MonthOfYear year: self month: calendar august
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> av [

	^MonthOfYear year: self month: calendar av
]

{ #category : #accessing }
ChaltenYear >> calendar [

	^calendar
]

{ #category : #'accessing dates' }
ChaltenYear >> dates [
	
	^self firstDate to: self lastDate
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> december [

	^MonthOfYear year: self month: calendar december
]

{ #category : #'interval protocol - private' }
ChaltenYear >> defaultIntervalIncrement [
	^ 1 yearMeasure
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> dhuAlHijja [

	^MonthOfYear year: self month: calendar dhuAlHijja
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> dhuAlQada [

	^MonthOfYear year: self month: calendar dhuAlQada
]

{ #category : #querying }
ChaltenYear >> distanceTo: aYear [

	^calendar distanceInYearsFrom: self to: aYear
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> elul [

	^MonthOfYear year: self month: calendar elul
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> february [

	^MonthOfYear year: self month: calendar february
]

{ #category : #'accessing dates' }
ChaltenYear >> firstDate [

	^FixedDate monthOfYear: self firstMonth dayNumber: 1
]

{ #category : #'accessing days' }
ChaltenYear >> firstDay [
	
	^self firstDate day
]

{ #category : #'accessing months' }
ChaltenYear >> firstMonth [

	^calendar firstMonthOf: self
]

{ #category : #comparing }
ChaltenYear >> hash [

	^self number hash
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> ifLongMarheshvanDo: aBlock else: anotherBlock [

	^calendar
		ifLongMarheshvanIn: self
		do: aBlock
		else: anotherBlock
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> ifShortKislevDo: aBlock else: anotherBlock [

	^calendar
		ifShortKislevIn: self
		do: aBlock
		else: anotherBlock
]

{ #category : #querying }
ChaltenYear >> includes: aPointInTime [

	^aPointInTime year = self
]

{ #category : #initialization }
ChaltenYear >> initializeNumber: aNumber type: aType calendar: aCalendar [

	number := aNumber.
	type := aType.
	calendar := aCalendar
]

{ #category : #'interval protocol - private' }
ChaltenYear >> intervalStrategy [

	^PointInTimeIntervalStrategy new
]

{ #category : #testing }
ChaltenYear >> isLeap [

	^type isLeap
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> iyyar [

	^MonthOfYear year: self month: calendar iyyar
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> january [

	^MonthOfYear year: self month: calendar january
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> july [

	^MonthOfYear year: self month: calendar july
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> jumadaI [

	^MonthOfYear year: self month: calendar jumadaI
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> jumadaII [

	^MonthOfYear year: self month: calendar jumadaII
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> june [

	^MonthOfYear year: self month: calendar june
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> kislev [

	^MonthOfYear year: self month: calendar kislev
]

{ #category : #'accessing dates' }
ChaltenYear >> lastDate [

	| lastMonth |

	lastMonth := self lastMonth.
	^FixedDate monthOfYear: lastMonth dayNumber: lastMonth lastDayNumber
]

{ #category : #'accessing days' }
ChaltenYear >> lastDay [
	
	^self lastDate day
]

{ #category : #'accessing days' }
ChaltenYear >> lastDayOfMonth [

	^self lastDate dayOfMonth
]

{ #category : #'accessing months' }
ChaltenYear >> lastMonth [
	
	^calendar lastMonthOf: self
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> march [

	^MonthOfYear year: self month: calendar march
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> marheshvan [

	^MonthOfYear year: self month: calendar marheshvan
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> may [

	^MonthOfYear year: self month: calendar may
]

{ #category : #'month of year creation' }
ChaltenYear >> month: aMonth [

	^MonthOfYear year: self month: aMonth
]

{ #category : #'accessing months' }
ChaltenYear >> monthNumbered: aNumber [

	| month |
	month := type monthNumbered: aNumber in: calendar.
	^month ofYear: self
]

{ #category : #'accessing months' }
ChaltenYear >> months [

	^self firstMonth to: self lastMonth
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> muharram [

	^MonthOfYear year: self month: calendar muharram
]

{ #category : #enumerating }
ChaltenYear >> newNumberFrom: aNumberOfYears [

	^calendar newYearNumberFrom: self adding: aNumberOfYears
]

{ #category : #enumerating }
ChaltenYear >> next: aMeasure [

	^self nextNumberOfYears: (aMeasure convertTo: TimeUnits year) amount
]

{ #category : #enumerating }
ChaltenYear >> nextLeapYear [

	| newYear |

	newYear := self next.
	[newYear isLeap] whileFalse: [newYear := newYear next].

	^newYear
]

{ #category : #enumerating }
ChaltenYear >> nextNumberOfYears: numberOfYears [

	| newNumber |
	newNumber := self newNumberFrom: numberOfYears.
	^self class number: newNumber calendar: calendar
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> nisan [

	^MonthOfYear year: self month: calendar nisan
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> november [

	^MonthOfYear year: self month: calendar november
]

{ #category : #accessing }
ChaltenYear >> number [

	^number
]

{ #category : #'accessing days' }
ChaltenYear >> numberOfDays [

	^calendar numberOfDaysIn: self
]

{ #category : #'accessing days' }
ChaltenYear >> numberOfDaysFor: aMonthDefinition [
	
	^type numberOfDaysFor: aMonthDefinition
]

{ #category : #'accessing months' }
ChaltenYear >> numberOfMonths [

	^self amountOfMonths monthsMeasure
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> october [

	^MonthOfYear year: self month: calendar october
]

{ #category : #enumerating }
ChaltenYear >> previousLeapYear [

	| newYear |

	newYear := self previous.
	[newYear isLeap] whileFalse: [newYear := newYear previous].

	^newYear
]

{ #category : #printing }
ChaltenYear >> printOn: aStream [

	aStream nextPutAll: 'Year '.
	self number printOn: aStream
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> rabiI [

	^MonthOfYear year: self month: calendar rabiI
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> rabiII [

	^MonthOfYear year: self month: calendar rabiII
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> rajab [

	^MonthOfYear year: self month: calendar rajab
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> ramadan [

	^MonthOfYear year: self month: calendar ramadan
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> safar [

	^MonthOfYear year: self month: calendar safar
]

{ #category : #'*Chalten-Core-RomanModel' }
ChaltenYear >> september [

	^MonthOfYear year: self month: calendar september
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> shaban [

	^MonthOfYear year: self month: calendar shaban
]

{ #category : #'*Chalten-Core-IslamicModel' }
ChaltenYear >> shawwal [

	^MonthOfYear year: self month: calendar shawwal
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> shevat [

	^MonthOfYear year: self month: calendar shevat
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> sivan [

	^MonthOfYear year: self month: calendar sivan
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> tammuz [

	^MonthOfYear year: self month: calendar tammuz
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> tevet [

	^MonthOfYear year: self month: calendar tevet
]

{ #category : #'*Chalten-Core-HebrewModel' }
ChaltenYear >> tishri [

	^MonthOfYear year: self month: calendar tishri
]
