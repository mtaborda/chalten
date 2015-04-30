test interval protocol
testToBy

	| interval |

	interval := JulianJanuary, 2004 to: JulianMarch, 2004 by: twoMonths.
	self assert: interval from = (JulianJanuary, 2004).
	self assert: interval to = (JulianMarch, 2004).
	self assert: interval by = twoMonths