test days accessing
testDaysFromEpochTo
	| nisanFirstOf0 nisanFirstOf1 nisanSecondOf1 nisanFifteenthOf1 nisanFirstOf2 nisanFirstOf5 nisanFirstOf5767 |
	nisanFirstOf0 := Nisan first , 0.
	nisanFirstOf1 := Nisan first , 1.
	nisanSecondOf1 := Nisan second , 1.
	nisanFifteenthOf1 := Nisan fifteenth , 1.
	nisanFirstOf2 := Nisan first , 2.
	nisanFirstOf5 := Nisan first , 5.
	nisanFirstOf5767 := Nisan first , 5767.
	self assert: (HebrewCalendar numberOfDaysFromEpochTo: nisanFirstOf0) = -1373605 daysMeasure.
	self assert: (HebrewCalendar numberOfDaysFromEpochTo: nisanFirstOf1) = -1373250 daysMeasure.
	self assert: (HebrewCalendar numberOfDaysFromEpochTo: nisanSecondOf1) = -1373249 daysMeasure.
	self assert: (HebrewCalendar numberOfDaysFromEpochTo: nisanFifteenthOf1) = -1373236 daysMeasure.
	self assert: (HebrewCalendar numberOfDaysFromEpochTo: nisanFirstOf2) = -1372895 daysMeasure.
	self assert: (HebrewCalendar numberOfDaysFromEpochTo: nisanFirstOf5) = -1371803 daysMeasure.
	self assert: (HebrewCalendar numberOfDaysFromEpochTo: nisanFirstOf5767) = 732754 daysMeasure