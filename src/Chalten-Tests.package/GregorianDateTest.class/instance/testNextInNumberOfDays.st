test enumerating
testNextInNumberOfDays
	self assert: (January first , 2007 next: self tenDays) = (January eleventh , 2007).
	self assert: (January first , 2007 next: self thirtyDays) = (January thirtyfirst , 2007).
	self assert: (January first , 2007 next: self thirtyOneDays) = (February first , 2007).
	self assert: (January first , 2007 next: 365 daysMeasure) = (January first , 2008).
	self assert: (January first , 2004 next: 366 daysMeasure) = (January first , 2005).
	self assert: (January first , 2007 next: 0 daysMeasure) = (January first , 2007)