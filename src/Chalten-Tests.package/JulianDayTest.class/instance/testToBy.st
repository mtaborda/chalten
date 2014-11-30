test interval protocol
testToBy

	| interval |

	interval := sunday to: friday by: twoDays.
	self assert: interval from = sunday.
	self assert: interval to = friday.
	self assert: interval by = twoDays.
	self assert: interval last = thursday.
	self assert: interval size = 3