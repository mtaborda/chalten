test enumerating
testPreviousInNumberOfDays
	self assert: (JulianJanuary eleventh , 2007 previous: self tenDays) = (JulianJanuary first , 2007).
	self assert: (JulianJanuary thirtyfirst , 2007 previous: self thirtyDays) = (JulianJanuary first , 2007).
	self assert: (JulianFebruary first , 2007 previous: self thirtyOneDays) = (JulianJanuary first , 2007).
	self assert: (JulianJanuary first , 2005 previous: 366 daysMeasure) = (JulianJanuary first , 2004).
	self assert: (JulianJanuary first , 2007 previous: 365 daysMeasure) = (JulianJanuary first , 2006)