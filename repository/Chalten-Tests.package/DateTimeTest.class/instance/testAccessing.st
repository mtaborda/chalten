test accessing
testAccessing

	| januaryFirst2004 |

	januaryFirst2004 := January first, 2004.
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) date = januaryFirst2004.
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) dayNumber = 1.
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) month = January.
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) monthOfYear = (January, 2004).
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) year = 2004 asGregorianYear.
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) dayNumber = 1.
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) timeOfDay = 0 hoursMeasure.
	self assert: (DateTime date: januaryFirst2004 timeOfDay: 0 hoursMeasure) zone = TimeZones local