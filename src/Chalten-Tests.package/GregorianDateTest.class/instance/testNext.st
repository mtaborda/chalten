test enumerating
testNext

	| date |

	date := January thirtyfirst, 2007.
	self assert: date next = (February first, 2007).

	date := February twentyeighth, 2007.
	self assert: date next = (March first, 2007).
	self assert: date next next = (March second, 2007).

	date := December thirtyfirst, 2007.
	self assert: date next = (January first, 2008)