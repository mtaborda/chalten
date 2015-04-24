*Chalten-Tests-TimeModel
testDaysMeasure

	self assert: Infinity daysMeasure = (TimeUnits day with: Infinity).
	self assert: Infinity daysMeasure > 365 daysMeasure.
	self assert: 1500 daysMeasure < Infinity daysMeasure