testing
testHash

	self assert:
		(TimeSpan from: midnight duration: oneHour) hash =
			(TimeSpan from: midnight duration: oneHour) hash