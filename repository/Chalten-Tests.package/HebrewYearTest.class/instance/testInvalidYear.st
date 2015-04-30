test instance creation
testInvalidYear
	self
		should: [ 1.5 asHebrewYear ]
		raise: InvalidYearNumberException
		withExceptionDo: [ :exception | self assert: exception description = '1.5 is an invalid number for a year in the Hebrew Calendar' ]