test enumerating
testNextDayOfMonth

	| date |

	date := Nisan first, 5767.

	self assert: (date nextDayOfMonth: Sivan third) = (Sivan third, 5767).
	self assert: ((date nextDayOfMonth: Sivan third) nextDayOfMonth: Tammuz fourth) = (Tammuz fourth, 5767).
	
	date := Sivan third, 5767.
	
	self assert: (date nextDayOfMonth: Iyyar third) = (Iyyar third, 5768).
	self assert: ((date nextDayOfMonth: Iyyar third) nextDayOfMonth: Nisan fourth) = (Nisan fourth, 5769)