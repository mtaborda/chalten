test enumerating
testNextInLeapYearsInANumberOfMonths

	| stream |
	
	stream := CircularReadStream on: IslamicCalendar monthsForLeapYears moving: TimeUnits month.
	
	stream upToEnd.
	self assert: (stream next: oneMonth) = muharram.
	
	stream upToEnd.
	self assert: (stream next: twelveMonths) = dhuAlHijja.
	
	stream upToEnd.
	self assert: (stream next: twelveMonths + oneMonth) = muharram