test querying
testNextMonth

	| monthOfYear |

	monthOfYear := Muharram, 2004.
	self assert: (monthOfYear nextMonth: calendar muharram) = (Muharram , 2005).
	self assert: (monthOfYear nextMonth: Muharram in: twoYears) = (Muharram , 2006).
	self assert: (monthOfYear nextMonth: calendar safar) = (Safar , 2004).
	self assert: (monthOfYear nextMonth: Safar in: twoYears) = (Safar , 2006).
	
	monthOfYear := Rajab, 2004.
	self assert: (monthOfYear nextMonth: Muharram) = (Muharram , 2005).
	self assert: (monthOfYear nextMonth: calendar muharram in: twoYears) = (Muharram , 2006).

	monthOfYear := Muharram, -1.
	self assert: (monthOfYear nextMonth: calendar muharram) = (Muharram , 0).
	self assert: (monthOfYear nextMonth: calendar dhuAlHijja) = (DhuAlHijja , -1)