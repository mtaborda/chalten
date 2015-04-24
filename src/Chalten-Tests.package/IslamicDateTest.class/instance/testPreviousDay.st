test enumerating
testPreviousDay

	| yaumAlAhad |

	yaumAlAhad := Muharram second, 1428.
	self assert: (yaumAlAhad previousDay: calendar yaumAlAhad) = (DhuAlHijja twentyfourth, 1427).
	self assert: (yaumAlAhad previousDay: calendar yaumAlIthnayna) = (DhuAlHijja twentyfifth, 1427).
	self assert: (yaumAlAhad previousDay: calendar yaumAthThalatha) = (DhuAlHijja twentysixth, 1427).
	self assert: (yaumAlAhad previousDay: calendar yaumAlArbaa) = (DhuAlHijja twentyseventh, 1427).
	self assert: (yaumAlAhad previousDay: calendar yaumAlHamis) = (DhuAlHijja twentyeighth, 1427).
	self assert: (yaumAlAhad previousDay: calendar yaumAlJuma) = (DhuAlHijja twentyninth, 1427).
	self assert: (yaumAlAhad previousDay: calendar yaumAsSabt) = (Muharram first, 1428)