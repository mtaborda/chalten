test dates accessing
testDateFromFixed
	| januaryFirstOf1 januaryFifthOf1 januaryFirstOf2 february29Of4 janauryFirstOf5 |
	januaryFirstOf1 := January first , 1.
	januaryFifthOf1 := January fifth , 1.
	januaryFirstOf2 := January first , 2.
	february29Of4 := February twentyninth , 4.
	janauryFirstOf5 := January first , 5.
	self assert: (GregorianCalendar dateFromNumberOfDays: 1) = januaryFirstOf1.
	self assert: (GregorianCalendar dateFromNumberOfDays: 5) = januaryFifthOf1.
	self 
		assert: (GregorianCalendar dateFromNumberOfDays: 366) = januaryFirstOf2.
	self 
		assert: (GregorianCalendar dateFromNumberOfDays: 1155) = february29Of4.
	self 
		assert: (GregorianCalendar dateFromNumberOfDays: 1462) = janauryFirstOf5