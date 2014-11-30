test interval protocol
testTo

	| interval |

	interval := (JulianJanuary, 2004 to: JulianFebruary, 2004).
	self assert: interval from = (JulianJanuary, 2004).
	self assert: interval to = (JulianFebruary, 2004).
	self assert: interval by = oneMonth