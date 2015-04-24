test interval protocol
testTo

	| interval |

	interval := january to: december.

	self assert: interval from = january.
	self assert: interval to = december.
	self assert: interval by = oneMonth