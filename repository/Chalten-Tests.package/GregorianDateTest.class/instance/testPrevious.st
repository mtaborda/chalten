test enumerating
testPrevious

	| date |

	date := January first, 2007.
	self assert: date previous = (December thirtyfirst, 2006).

	date := March first, 2007.
	self assert: date previous = (February twentyeighth, 2007).
	
	date := March first, 2008.
	self assert: date previous = (February twentyninth, 2008)