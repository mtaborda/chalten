test interval protocol
testToBy

	| interval |

	interval := Muharram first, 1428 to: Muharram tenth, 1428 by: self twoDays.

	self assert: interval from = (Muharram first, 1428).
	self assert: interval to = (Muharram tenth, 1428).
	self assert: interval by = self twoDays