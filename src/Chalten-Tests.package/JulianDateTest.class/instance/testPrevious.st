test enumerating
testPrevious

	| date |

	date := JulianJanuary first, 2007.
	self assert: date previous = (JulianDecember thirtyfirst, 2006).

	date := JulianMarch first, 2007.
	self assert: date previous = (JulianFebruary twentyeighth, 2007).
	
	date := JulianMarch first, 2008.
	self assert: date previous = (JulianFebruary twentyninth, 2008)