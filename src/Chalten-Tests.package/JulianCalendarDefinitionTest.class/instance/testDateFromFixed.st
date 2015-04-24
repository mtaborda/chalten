test dates accessing
testDateFromFixed
	| januaryThirdOf1 januarySeventhOf1 januaryThirdOf2 marchSecondOf4 janauryThirdOf5 |
	januaryThirdOf1 := JulianJanuary third , 1.
	januarySeventhOf1 := JulianJanuary seventh , 1.
	januaryThirdOf2 := JulianJanuary third , 2.
	marchSecondOf4 := JulianMarch second , 4.
	janauryThirdOf5 := JulianJanuary third , 5.
	self assert: (JulianCalendar dateFromNumberOfDays: 1) = januaryThirdOf1.
	self assert: (JulianCalendar dateFromNumberOfDays: 5) = januarySeventhOf1.
	self assert: (JulianCalendar dateFromNumberOfDays: 366) = januaryThirdOf2.
	self assert: (JulianCalendar dateFromNumberOfDays: 1155) = marchSecondOf4.
	self assert: (JulianCalendar dateFromNumberOfDays: 1462) = janauryThirdOf5