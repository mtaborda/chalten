test enumerating
testPreviousDayOfMonth

	| date |

	date := January first, 2007.

	self assert: (date previousDayOfMonth: March third) = (March third, 2006).

	self assert: ((date previousDayOfMonth: March third) previousDayOfMonth: April fourth) = (April fourth, 2005)