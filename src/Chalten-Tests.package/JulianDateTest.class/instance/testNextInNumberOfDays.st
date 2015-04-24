test enumerating
testNextInNumberOfDays
	self assert: (JulianJanuary first , 2007 next: self tenDays) = (JulianJanuary eleventh , 2007).
	self assert: (JulianJanuary first , 2007 next: self thirtyDays) = (JulianJanuary thirtyfirst , 2007).
	self assert: (JulianJanuary first , 2007 next: self thirtyOneDays) = (JulianFebruary first , 2007).
	self assert: (JulianJanuary first , 2007 next: 365 daysMeasure) = (JulianJanuary first , 2008).
	self assert: (JulianJanuary first , 2004 next: 366 daysMeasure) = (JulianJanuary first , 2005).
	self assert: (JulianJanuary first , 2007 next: 0 daysMeasure) = (JulianJanuary first , 2007)