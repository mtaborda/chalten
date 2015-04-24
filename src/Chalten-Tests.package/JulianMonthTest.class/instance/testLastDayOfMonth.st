test accessing
testLastDayOfMonth

	self assert: january lastDayOfMonth = JulianJanuary thirtyfirst.
	self assert: february lastDayOfMonth = JulianFebruary twentyninth.
	self assert: march lastDayOfMonth = JulianMarch thirtyfirst.
	self assert: april lastDayOfMonth = JulianApril thirtieth.
	self assert: may lastDayOfMonth = JulianMay thirtyfirst.
	self assert: june lastDayOfMonth = JulianJune thirtieth.
	self assert: july lastDayOfMonth = JulianJuly thirtyfirst.
	self assert: august lastDayOfMonth = JulianAugust thirtyfirst.
	self assert: september lastDayOfMonth = JulianSeptember thirtieth.
	self assert: october lastDayOfMonth = JulianOctober thirtyfirst.
	self assert: november lastDayOfMonth = JulianNovember thirtieth.
	self assert: december lastDayOfMonth = JulianDecember thirtyfirst