test interval protocol
testTo

	| interval |

	interval := Nisan, 5768 to: Iyyar, 5768.

	self assert: interval from = (Nisan, 5768).
	self assert: interval to = (Iyyar, 5768).
	self assert: interval by = oneMonth