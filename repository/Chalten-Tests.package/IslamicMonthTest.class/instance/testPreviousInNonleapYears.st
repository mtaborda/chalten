test enumerating
testPreviousInNonleapYears

	| stream |
	
	stream := CircularReadStream on: IslamicCalendar monthsForNonleapYears moving: TimeUnits month.
	
	self assert: stream previous = dhuAlHijja.
	self assert: stream previous = dhuAlQada.
	self assert: stream previous = shawwal.
	self assert: stream previous = ramadan.
	self assert: stream previous = shaban.
	self assert: stream previous = rajab.
	self assert: stream previous = jumadaII.
	self assert: stream previous = jumadaI.
	self assert: stream previous = rabiII.
	self assert: stream previous = rabiI.
	self assert: stream previous = safar.
	self assert: stream previous = muharram