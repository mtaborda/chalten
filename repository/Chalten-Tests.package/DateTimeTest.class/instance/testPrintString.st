test printing
testPrintString

	self
		assert: januaryFirstOf2004On23Hours59Minutes59Seconds printString
		equals: ('January 1, 2004 23:59:59 {<1p>}' expandMacrosWith: TimeZones local).
	self assert: hourInBsAs printString equals: ('March 8, 2008 17:05:00 {<1p>}' expandMacrosWith: TimeZones buenosAires).
	self assert: hourInGreenwich printString equals: ('March 8, 2008 20:05:00 {<1p>}' expandMacrosWith: TimeZones greenwich)