test interval protocol
testToBy

	| interval |

	interval := yaumAlAhad to: yaumAlJuma by: twoDays.
	self assert: interval from = yaumAlAhad.
	self assert: interval to = yaumAlJuma.
	self assert: interval by = twoDays.
	self assert: interval last = yaumAlHamis.
	self assert: interval size = 3