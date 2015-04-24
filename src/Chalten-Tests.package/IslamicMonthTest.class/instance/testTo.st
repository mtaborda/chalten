test interval protocol
testTo

	| interval |

	interval := muharram to: dhuAlHijja.

	self assert: interval from = muharram.
	self assert: interval to = dhuAlHijja.
	self assert: interval by = oneMonth