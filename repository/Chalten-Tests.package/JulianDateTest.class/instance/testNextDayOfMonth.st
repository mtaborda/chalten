test enumerating
testNextDayOfMonth

	| date |

	date := JulianJanuary first, 2007.

	self assert: (date nextDayOfMonth: JulianMarch third) = (JulianMarch third, 2007).
	self assert: ((date nextDayOfMonth: JulianMarch third) nextDayOfMonth: JulianApril fourth) = (JulianApril fourth, 2007).
	
	date := JulianMarch first, 2007.

	self assert: (date nextDayOfMonth: JulianFebruary third) = (JulianFebruary third, 2008).
	self assert: ((date nextDayOfMonth: JulianFebruary third) nextDayOfMonth: JulianApril fourth) = (JulianApril fourth, 2008)