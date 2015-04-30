test querying
testPreviousMonth

	| monthOfYear |
	
	monthOfYear := Nisan, 5768.
	self assert: (monthOfYear previousMonth: calendar nisan) = (Nisan , 5767).
	self assert: (monthOfYear previousMonth: Nisan in: twoYears) = (Nisan , 5766).
	
	monthOfYear := Av, 5768.
	self assert: (monthOfYear previousMonth: calendar tammuz) = (Tammuz , 5768).
	self assert: (monthOfYear previousMonth: calendar tammuz in: twoYears) = (Tammuz , 5766).

	monthOfYear := Elul, 5768.
	self assert: (monthOfYear previousMonth: calendar nisan) = (Nisan , 5768).
	self assert: (monthOfYear previousMonth: Nisan in: twoYears) = (Nisan , 5766).
	
	monthOfYear := Nisan, 1.
	self assert: (monthOfYear previousMonth: calendar nisan) = (Nisan , 0).
	self assert: (monthOfYear previousMonth: Adar) = (AdarI , 0)