test enumerating
testNextMonth
	| date |
	date := January first , 2007.
	self assert: (date nextMonth: 1 monthMeasure) = (February first , 2007).
	self assert: (date nextMonth: 2 monthsMeasure) = (March first , 2007).
	self assert: (date nextMonth: 3 monthsMeasure) = (April first , 2007).
	self assert: (date nextMonth: 4 monthsMeasure) = (May first , 2007).
	self assert: (date nextMonth: 5 monthsMeasure) = (June first , 2007).
	self assert: (date nextMonth: 6 monthsMeasure) = (July first , 2007).
	self assert: (date nextMonth: 7 monthsMeasure) = (August first , 2007).
	self assert: (date nextMonth: 8 monthsMeasure) = (September first , 2007).
	self assert: (date nextMonth: 9 monthsMeasure) = (October first , 2007).
	self assert: (date nextMonth: 10 monthsMeasure) = (November first , 2007).
	self assert: (date nextMonth: 11 monthsMeasure) = (December first , 2007).
	self assert: (date nextMonth: 12 monthsMeasure) = (January first , 2008)