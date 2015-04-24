test enumerating
testNextDayOfMonth

	| date |

	date := Muharram first, 1428.

	self assert: (date nextDayOfMonth: RabiI third) = (RabiI third, 1428).
	self assert: ((date nextDayOfMonth: RabiI third) nextDayOfMonth: RabiII fourth) = (RabiII fourth, 1428).
	
	date := Safar first, 1428.

	self assert: (date nextDayOfMonth: Muharram third) = (Muharram third, 1429).
	self assert: ((date nextDayOfMonth: Muharram third) nextDayOfMonth: RabiI fourth) = (RabiI fourth, 1429)