test enumerating
testNextFrom
	| strategy |
	strategy := MonthsOfLeapYearsForCircularStreamStrategy of: IslamicCalendar.
	self assert: (strategy next: 2 monthsMeasure from: Muharram) = RabiI.
	self assert: (strategy next: 5 monthsMeasure from: RabiII) = Ramadan.
	self assert: (strategy next: 3 monthsMeasure from: DhuAlQada) = Safar.
	self assert: (strategy next: 9 monthsMeasure from: Shaban) = JumadaI.
	self assert: (strategy next: 2 monthsMeasure from: Shawwal) = DhuAlHijja