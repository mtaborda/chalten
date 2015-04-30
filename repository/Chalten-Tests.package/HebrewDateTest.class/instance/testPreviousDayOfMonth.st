test enumerating
testPreviousDayOfMonth

	| day |

	day := Nisan first, 5767.

	self assert: (day previousDayOfMonth: Sivan third) = (Sivan third, 5766).
	self assert: ((day previousDayOfMonth: Sivan third) previousDayOfMonth: Tammuz fourth) = (Tammuz fourth, 5765)