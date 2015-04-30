test accessing
testLastDay
	self assert: (MonthOfYear muharramOf: 1428 asIslamicYear) lastDay = calendar yaumAlAhad.
	self assert: (MonthOfYear dhuAlHijjaOf: 1428 asIslamicYear) lastDay = calendar yaumAlArbaa.
	self assert: (MonthOfYear dhuAlHijjaOf: 1427 asIslamicYear) lastDay = calendar yaumAlJuma