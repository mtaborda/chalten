test interval protocol
testToReverse

	| interval |

	interval := Nisan first to: Nisan second by: oneDay.
	self assert: interval reverse first = interval to.
	self assert: interval reverse last = interval from.

	interval := Nisan first to: Nisan second by: oneDay negated.
	self assert: interval reverse first = interval to.
	self assert: interval reverse last = interval from