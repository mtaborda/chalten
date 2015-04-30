test enumerating
testPreviousDayOfMonth

	| date |

	date := JulianJanuary first, 2007.

	self assert: (date previousDayOfMonth: JulianMarch third) = (JulianMarch third, 2006).

	self assert: ((date previousDayOfMonth: JulianMarch third) previousDayOfMonth: JulianApril fourth) = (JulianApril fourth, 2005)