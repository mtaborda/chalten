test querying
testDaysFrom
	self assert: (December thirtyfirst distanceFrom: December thirtyfirst) = 0 daysMeasure.
	self assert: (December thirtyfirst distanceFrom: January first) = 364 daysMeasure