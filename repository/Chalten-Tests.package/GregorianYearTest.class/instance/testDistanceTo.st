test interval protocol
testDistanceTo
	| absoluteDistance |
	absoluteDistance := 2007 asGregorianYear absoluteDistanceTo: 2010 asGregorianYear.
	self assert: absoluteDistance = 3 yearsMeasure