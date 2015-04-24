test querying
testMonthsTo

	| stream |
	
	stream := CircularReadStream on: IslamicCalendar monthsForLeapYears moving: TimeUnits month.
	
	self assert: (stream distanceTo: muharram from: muharram) = zeroMonths.
	self assert: (stream distanceTo: safar from: muharram) = oneMonth.
	self assert: (stream distanceTo: dhuAlHijja from: muharram) = elevenMonths.

	self assert: (stream distanceTo: muharram from: dhuAlHijja) = oneMonth.
	self assert: (stream distanceTo: dhuAlQada from: dhuAlHijja) = elevenMonths