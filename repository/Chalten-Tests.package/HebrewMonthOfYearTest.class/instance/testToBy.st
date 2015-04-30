test interval protocol
testToBy

	| interval |

	interval := Nisan, 5768 to: Tammuz, 5768 by: twoMonths.

	self assert: interval from = (Nisan, 5768).
	self assert: interval to = (Tammuz, 5768).
	self assert: interval by = twoMonths