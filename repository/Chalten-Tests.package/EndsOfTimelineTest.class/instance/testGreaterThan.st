test magnitude protocol
testGreaterThan

	self assert: TheEndOfTime > TheBeginningOfTime.
	self assert: TheEndOfTime > (May fourth, 2014).
	
	self deny: TheBeginningOfTime > TheEndOfTime.
	self deny: TheBeginningOfTime > (May fourth, 2014)