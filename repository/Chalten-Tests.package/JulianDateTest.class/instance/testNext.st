test enumerating
testNext

	| date |

	date := JulianJanuary thirtyfirst, 2007.
	self assert: date next = (JulianFebruary first, 2007).

	date := JulianFebruary twentyeighth, 2007.
	self assert: date next = (JulianMarch first, 2007).
	self assert: date next next = (JulianMarch second, 2007).

	date := JulianDecember thirtyfirst, 2007.
	self assert: date next = (JulianJanuary first, 2008)