test enumerating
testNextDay

	| yaumAlAhad |

	yaumAlAhad := Muharram second, 1428.
	self assert: (yaumAlAhad nextDay: calendar yaumAlAhad) = (Muharram ninth, 1428).
	self assert: (yaumAlAhad nextDay: calendar yaumAlIthnayna) = (Muharram third, 1428).
	self assert: (yaumAlAhad nextDay: calendar yaumAthThalatha) = (Muharram fourth, 1428).
	self assert: (yaumAlAhad nextDay: calendar yaumAlArbaa) = (Muharram fifth, 1428).
	self assert: (yaumAlAhad nextDay: calendar yaumAlHamis) = (Muharram sixth, 1428).
	self assert: (yaumAlAhad nextDay: calendar yaumAlJuma) = (Muharram seventh, 1428).
	self assert: (yaumAlAhad nextDay: calendar yaumAsSabt) = (Muharram eighth, 1428)