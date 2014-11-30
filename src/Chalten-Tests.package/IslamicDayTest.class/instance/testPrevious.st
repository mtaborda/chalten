test enumerating
testPrevious

	self assert: yaumAlAhad previous = yaumAsSabt.
	self assert: yaumAlIthnayna previous = yaumAlAhad.
	self assert: yaumAthThalatha previous = yaumAlIthnayna.
	self assert: yaumAlArbaa previous = yaumAthThalatha.
	self assert: yaumAlHamis previous = yaumAlArbaa.
	self assert: yaumAlJuma previous = yaumAlHamis.
	self assert: yaumAsSabt previous = yaumAlJuma