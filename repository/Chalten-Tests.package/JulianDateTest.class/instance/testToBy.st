test interval protocol
testToBy

	| interval |

	interval := JulianJanuary first, 2007 to: JulianJanuary tenth, 2007 by: self twoDays.
	self assert: interval from = (JulianJanuary first, 2007).
	self assert: interval to = (JulianJanuary tenth, 2007).
	self assert: interval by = self twoDays