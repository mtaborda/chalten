test querying
testDistanceFromTo
	| strategy |
	strategy := MonthsOfNonleapYearsForCircularStreamStrategy of: IslamicCalendar.
	self assert: (strategy distanceFrom: Muharram to: RabiI) = 2 monthsMeasure.
	self assert: (strategy distanceFrom: RabiII to: Ramadan) = 5 monthsMeasure.
	self assert: (strategy distanceFrom: DhuAlQada to: Safar) = 3 monthsMeasure.
	self assert: (strategy distanceFrom: Shaban to: JumadaI) = 9 monthsMeasure.
	self assert: (strategy distanceFrom: Shawwal to: DhuAlHijja) = 2 monthsMeasure