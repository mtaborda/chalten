test enumerating
testNext

	self assert: yaumAlAhad next = yaumAlIthnayna.
	self assert: yaumAlIthnayna next = yaumAthThalatha.
	self assert: yaumAthThalatha next = yaumAlArbaa.
	self assert: yaumAlArbaa next = yaumAlHamis.
	self assert: yaumAlHamis next = yaumAlJuma.
	self assert: yaumAlJuma next = yaumAsSabt.
	self assert: yaumAsSabt next = yaumAlAhad