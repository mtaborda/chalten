test querying
testNextMonth

	| monthOfYear |

	monthOfYear := January, 2004.
	self assert: (monthOfYear nextMonth: calendar january) = (January, 2005).
	self assert: (monthOfYear nextMonth: calendar january in: twoYears) = (January, 2006).
	self assert: (monthOfYear nextMonth: calendar february) = (February, 2004).
	self assert: (monthOfYear nextMonth: calendar february in: twoYears) = (February, 2006).

	monthOfYear := July, 2004.
	self assert: (monthOfYear nextMonth: calendar january) = (January, 2005).
	self assert: (monthOfYear nextMonth: calendar january in: twoYears) = (January, 2006).

	monthOfYear := January, -1.
	self assert: (monthOfYear nextMonth: calendar january) = (January, 0).
	self assert: (monthOfYear nextMonth: calendar december) = (December, -1)