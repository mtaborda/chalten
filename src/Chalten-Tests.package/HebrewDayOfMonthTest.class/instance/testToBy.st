test interval protocol
testToBy

	| interval |

	interval := Nisan first to: Nisan tenth by: twoDays.
	self assert: interval from = Nisan first.
	self assert: interval to = Nisan tenth.
	self assert: interval by = twoDays