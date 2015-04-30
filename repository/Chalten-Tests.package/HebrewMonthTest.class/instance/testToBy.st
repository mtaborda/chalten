test interval protocol
testToBy

	| interval |

	interval := nisan to: adarII by: twoMonths.

	self assert: interval from = nisan.
	self assert: interval to = adarII.
	self assert: interval by = twoMonths