test interval protocol
testDistanceTo
	| absoluteDistance |
	absoluteDistance := 2007 asJulianYear absoluteDistanceTo: 2010 asJulianYear.
	self assert: absoluteDistance = 3 yearsMeasure