test interval protocol
testTo

	| interval |

	interval := (January, 2004 to: February, 2004).
	self assert: interval from = (January, 2004).
	self assert: interval to = (February, 2004).
	self assert: interval by = oneMonth