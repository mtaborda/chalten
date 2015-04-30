test querying
testDistanceFromTo

	| stream |
	stream := MonthsOfYearsStream startingOn: Safar, 1445.
	self assert: (stream distanceFrom: RabiI, 1445 to: Ramadan, 1445) = 7 monthsMeasure.
	self assert: (stream distanceFrom: DhuAlQada, 1444 to: Ramadan, 1445) = 0 monthsMeasure