test enumerating
testNextInANumberOfDays
	self assert: (yaumAlIthnayna next: oneDay) = yaumAthThalatha.
	self assert: (yaumAlIthnayna next: twoDays) = yaumAlArbaa.
	self assert: (yaumAlIthnayna next: 6 daysMeasure) = yaumAlAhad.
	self assert: (yaumAlIthnayna next: sevenDays) = yaumAlIthnayna.
	self assert: (yaumAlIthnayna next: 14 daysMeasure) = yaumAlIthnayna.
	self assert: (yaumAlAhad next: 21 daysMeasure) = yaumAlAhad