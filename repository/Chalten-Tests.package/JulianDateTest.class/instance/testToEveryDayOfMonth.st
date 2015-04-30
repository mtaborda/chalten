test interval protocol
testToEveryDayOfMonth

	| dates |

	dates := JulianJanuary tenth, 2007 to: JulianJanuary ninth, 2009 everyDayOfMonth: JulianJanuary tenth.
	self assert: dates size = 2.
	self assert: (dates includes: JulianJanuary tenth, 2007).
	self assert: (dates includes: JulianJanuary tenth, 2008).

	dates := JulianJanuary tenth, 2007 to: JulianJanuary tenth, 2009 everyDayOfMonth: JulianJanuary tenth.
	self assert: (dates includes: JulianJanuary tenth, 2007).
	self assert: (dates includes: JulianJanuary tenth, 2008).
	self assert: (dates includes: JulianJanuary tenth, 2009)