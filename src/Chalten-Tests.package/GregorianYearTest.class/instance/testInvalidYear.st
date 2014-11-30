test instance creation
testInvalidYear
	self
		should: [ 1.5 asGregorianYear ]
		raise: InvalidYearNumberException
		withExceptionDo: [ :anException | self assert: anException description = '1.5 is an invalid number for a year in the Gregorian Calendar' ]