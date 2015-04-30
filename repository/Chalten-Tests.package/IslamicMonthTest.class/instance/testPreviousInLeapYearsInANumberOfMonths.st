test enumerating
testPreviousInLeapYearsInANumberOfMonths

	| stream |
	
	stream := CircularReadStream on: IslamicCalendar monthsForLeapYears moving: TimeUnits month.
	
	stream upToEnd.
	self assert: (stream previous: oneMonth) = dhuAlQada.
	
	stream upToEnd.
	self assert: (stream previous: twelveMonths) = dhuAlHijja.
	
	stream upToEnd.
	self assert: (stream previous: twelveMonths + oneMonth) = dhuAlQada