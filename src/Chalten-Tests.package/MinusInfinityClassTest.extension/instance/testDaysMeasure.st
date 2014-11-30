*Chalten-Tests-TimeModel
testDaysMeasure

	self assert: MinusInfinity daysMeasure = (TimeUnits day with: MinusInfinity).
	self assert: MinusInfinity daysMeasure < 365 daysMeasure.
	self assert: -1500 daysMeasure > MinusInfinity daysMeasure