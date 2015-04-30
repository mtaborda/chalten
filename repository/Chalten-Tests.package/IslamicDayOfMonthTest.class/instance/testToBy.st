test interval protocol
testToBy

	| interval |

	interval := Muharram first to: Muharram tenth by: twoDays.
	self assert: interval from = Muharram first.
	self assert: interval to = Muharram tenth.
	self assert: interval by = twoDays