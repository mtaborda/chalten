test enumerating
testNextDayOfMonth

	| date |

	date := January first, 2007.

	self assert: (date nextDayOfMonth: March third) = (March third, 2007).
	self assert: ((date nextDayOfMonth: March third) nextDayOfMonth: April fourth) = (April fourth, 2007).
	
	date := March first, 2007.

	self assert: (date nextDayOfMonth: February third) = (February third, 2008).
	self assert: ((date nextDayOfMonth: February third) nextDayOfMonth: April fourth) = (April fourth, 2008)