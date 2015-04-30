test enumerating
testPreviousDayOfMonth

	| day |

	day := Muharram first, 1428.

	self assert: (day previousDayOfMonth: RabiI third) = (RabiI third, 1427).
	self assert: ((day previousDayOfMonth: RabiI third) previousDayOfMonth: RabiII fourth) = (RabiII fourth, 1426)