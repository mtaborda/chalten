test interval protocol
testToBy

	| interval |

	interval := muharram to: dhuAlHijja by: twoMonths.

	self assert: interval from = muharram.
	self assert: interval to = dhuAlHijja.
	self assert: interval by = twoMonths