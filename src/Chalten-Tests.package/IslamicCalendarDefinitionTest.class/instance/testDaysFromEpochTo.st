test days accessing
testDaysFromEpochTo
	| muharramFirstOf0 muharramFirstOf1 muharramSecondOf1 muharramFifteenthOf1 muharramFirstOf2 muharramFirstOf5 |
	muharramFirstOf0 := Muharram first , 0.
	muharramFirstOf1 := Muharram first , 1.
	muharramSecondOf1 := Muharram second , 1.
	muharramFifteenthOf1 := Muharram fifteenth , 1.
	muharramFirstOf2 := Muharram first , 2.
	muharramFirstOf5 := Muharram first , 5.
	self assert: (IslamicCalendar numberOfDaysFromEpochTo: muharramFirstOf0) = 226660 daysMeasure.
	self assert: (IslamicCalendar numberOfDaysFromEpochTo: muharramFirstOf1) = 227014 daysMeasure.
	self assert: (IslamicCalendar numberOfDaysFromEpochTo: muharramSecondOf1) = 227015 daysMeasure.
	self assert: (IslamicCalendar numberOfDaysFromEpochTo: muharramFifteenthOf1) = 227028 daysMeasure.
	self assert: (IslamicCalendar numberOfDaysFromEpochTo: muharramFirstOf2) = 227368 daysMeasure.
	self assert: (IslamicCalendar numberOfDaysFromEpochTo: muharramFirstOf5) = 228431 daysMeasure