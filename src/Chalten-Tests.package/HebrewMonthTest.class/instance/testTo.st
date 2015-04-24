test interval protocol
testTo

	| interval |

	interval := nisan to: adarII.

	self assert: interval from = nisan.
	self assert: interval to = adarII.
	self assert: interval by = oneMonth