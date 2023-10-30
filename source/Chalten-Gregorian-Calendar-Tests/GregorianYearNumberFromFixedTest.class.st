Class {
	#name : 'GregorianYearNumberFromFixedTest',
	#superclass : 'TestCase',
	#category : 'Chalten-Gregorian-Calendar-Tests',
	#package : 'Chalten-Gregorian-Calendar-Tests'
}

{ #category : 'test' }
GregorianYearNumberFromFixedTest >> testValue [

	| calendar |
	calendar := ChaltenEnvironment calendarNamed: #GregorianCalendar.
	self assert: (YearNumberFromFixed for: 1 using: calendar) value = 1.
	self assert: (YearNumberFromFixed for: 360 using: calendar) value = 1.
	self assert: (YearNumberFromFixed for: 366 using: calendar) value = 2.
	self assert: (YearNumberFromFixed for: 730 using: calendar) value = 2.
	self assert: (YearNumberFromFixed for: 800 using: calendar) value = 3.
	self assert: (YearNumberFromFixed for: 76500 using: calendar) value = 210.
	self assert: (YearNumberFromFixed for: 777000 using: calendar) value = 2128
]
