test querying
testNextMonth

	| monthOfYear |
	
	monthOfYear := Nisan, 5768.
	self assert: (monthOfYear nextMonth: calendar nisan) = (Nisan , 5769).
	self assert: (monthOfYear nextMonth: Nisan in: twoYears) = (Nisan , 5770).
	self assert: (monthOfYear nextMonth: calendar iyyar) = (Iyyar , 5768).
	self assert: (monthOfYear nextMonth: Kislev in: twoYears) = (Kislev , 5770).
	
	monthOfYear := Sivan, 5768.
	self assert: (monthOfYear nextMonth: Nisan) = (Nisan , 5769).
	self assert: (monthOfYear nextMonth: calendar nisan in: twoYears) = (Nisan , 5770).

	monthOfYear := Nisan, -1.
	self assert: (monthOfYear nextMonth: calendar nisan) = (Nisan , 0).
	self assert: (monthOfYear nextMonth: calendar adar) = (Adar , -1)