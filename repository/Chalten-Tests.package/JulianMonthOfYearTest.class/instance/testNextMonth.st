test querying
testNextMonth

	| monthOfYear |

	monthOfYear := JulianJanuary, 2004.
	self assert: (monthOfYear nextMonth: calendar january) = (JulianJanuary, 2005).
	self assert: (monthOfYear nextMonth: calendar january in: twoYears) = (JulianJanuary, 2006).
	self assert: (monthOfYear nextMonth: calendar february) = (JulianFebruary, 2004).
	self assert: (monthOfYear nextMonth: calendar february in: twoYears) = (JulianFebruary, 2006).

	monthOfYear := JulianJuly, 2004.
	self assert: (monthOfYear nextMonth: calendar january) = (JulianJanuary, 2005).
	self assert: (monthOfYear nextMonth: calendar january in: twoYears) = (JulianJanuary, 2006).

	monthOfYear := JulianJanuary, -1.
	self assert: (monthOfYear nextMonth: calendar january) = (JulianJanuary, 1).
	self assert: (monthOfYear nextMonth: calendar december) = (JulianDecember, -1)