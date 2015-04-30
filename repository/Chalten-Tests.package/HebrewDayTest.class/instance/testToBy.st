test interval protocol
testToBy

	| interval |

	interval := yomRishon to: yomShishi by: twoDays.
	self assert: interval from = yomRishon.
	self assert: interval to = yomShishi.
	self assert: interval by = twoDays.
	self assert: interval last = yomHamishi.
	self assert: interval size = 3