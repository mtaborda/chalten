test interval protocol
testToBy

	| interval |

	interval := january to: december by: twoMonths.

	self assert: interval from = january.
	self assert: interval to = december.
	self assert: interval by = twoMonths