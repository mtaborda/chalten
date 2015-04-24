test querying
testMonthsFrom

	| stream |
	
	stream := CircularReadStream on: IslamicCalendar monthsForLeapYears moving: TimeUnits month.
	
	self assert: (stream distanceFrom: muharram to: muharram) = zeroMonths.
	self assert: (stream distanceFrom: safar to: muharram) = elevenMonths.
	self assert: (stream distanceFrom: dhuAlHijja to: muharram) = oneMonth.

	self assert: (stream distanceFrom: muharram to: dhuAlHijja) = elevenMonths.
	self assert: (stream distanceFrom: dhuAlQada to: dhuAlHijja) = oneMonth