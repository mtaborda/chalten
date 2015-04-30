test querying
testPreviousMonth

	| monthOfYear |

	monthOfYear := Muharram, 2004.
	self assert: (monthOfYear previousMonth: calendar muharram) = (Muharram , 2003).
	self assert: (monthOfYear previousMonth: Muharram in: twoYears) = (Muharram , 2002).

	monthOfYear := RabiII, 2004.
	self assert: (monthOfYear previousMonth: calendar safar) = (Safar , 2004).
	self assert: (monthOfYear previousMonth: calendar safar in: twoYears) = (Safar , 2002).

	monthOfYear := Rajab, 2004.
	self assert: (monthOfYear previousMonth: calendar muharram) = (Muharram , 2004).
	self assert: (monthOfYear previousMonth: Muharram in: twoYears) = (Muharram , 2002).

	monthOfYear := Muharram, 1.
	self assert: (monthOfYear previousMonth: calendar muharram) = (Muharram , 0).
	self assert: (monthOfYear previousMonth: DhuAlHijja) = (DhuAlHijja , 0)