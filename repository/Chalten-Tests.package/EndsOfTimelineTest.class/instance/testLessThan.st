test magnitude protocol
testLessThan

	self assert: TheBeginningOfTime < TheEndOfTime.
	self assert: TheBeginningOfTime < (May fourth, 2014).
	
	self deny: TheEndOfTime < TheBeginningOfTime.
	self deny: TheEndOfTime < (May fourth, 2014)