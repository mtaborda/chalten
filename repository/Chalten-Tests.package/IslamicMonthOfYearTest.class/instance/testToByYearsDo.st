test interval protocol
testToByYearsDo

	| yearNumber |
	yearNumber := 2004.
	(Muharram, 2004 to: DhuAlHijja, 2010 by: twelveMonths) do: [:month |
		self assert: month monthNumber = 1.
		self assert: month year number = yearNumber.
		yearNumber := yearNumber + 1].
	self assert: yearNumber = 2011