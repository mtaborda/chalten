test interval protocol
testToReverse

	| interval |

	interval := Muharram first to: Muharram second by: oneDay.
	self assert: interval reverse first = interval to.
	self assert: interval reverse last = interval from.

	interval := Muharram first to: Muharram second by: oneDay negated.
	self assert: interval reverse first = interval to.
	self assert: interval reverse last = interval from