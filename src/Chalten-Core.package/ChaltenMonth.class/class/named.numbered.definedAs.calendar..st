instance creation
named: aString numbered: aNumber definedAs: aMonthDefinition calendar: aCalendar
	"Don`t use this message to obtain an specific month. The correct way to obtain a month is sending to calendar the message named as the month; or send #monthNamed: or #monthNumbered:,
	with the correct collaborators, to the calendar too.
	Or, directly, use the well know objects, for example: January, February, March, April, May, June, July, August, September, October, November or December"
	
	^self new initializeNamed: aString numbered: aNumber definedAs: aMonthDefinition calendar: aCalendar