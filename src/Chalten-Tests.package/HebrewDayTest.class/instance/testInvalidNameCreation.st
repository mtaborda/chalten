test creation
testInvalidNameCreation

	self 
		should: [calendar dayNamed: 'Pedro Duque, otro']
		raise: InvalidDayNameException
		withExceptionDo: [:exception | 
			self assert: exception description = 'The name Pedro Duque, otro is invalid as a day of a week']