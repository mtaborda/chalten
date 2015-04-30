test enumerating
testPreviousInNumberOfDays
	self assert: (January eleventh , 2007 previous: self tenDays) = (January first , 2007).
	self assert: (January thirtyfirst , 2007 previous: self thirtyDays) = (January first , 2007).
	self assert: (February first , 2007 previous: self thirtyOneDays) = (January first , 2007).
	self assert: (January first , 2005 previous: 366 daysMeasure) = (January first , 2004).
	self assert: (January first , 2007 previous: 365 daysMeasure) = (January first , 2006)