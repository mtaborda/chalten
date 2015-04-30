test enumerating
testNextInLeapYears

	| stream |
	
	stream := CircularReadStream on: IslamicCalendar monthsForLeapYears moving: TimeUnits month.
	
	self assert: stream next = safar.
	self assert: stream next = rabiI.
	self assert: stream next = rabiII.
	self assert: stream next = jumadaI.
	self assert: stream next = jumadaII.
	self assert: stream next = rajab.
	self assert: stream next = shaban.
	self assert: stream next = ramadan.
	self assert: stream next = shawwal.
	self assert: stream next = dhuAlQada.
	self assert: stream next = dhuAlHijja.
	self assert: stream next = muharram