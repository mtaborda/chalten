test accessing time
testSecondsClock

	self
		should: [ environment secondsClock ]
		raise: UndefinedEnvironmentException
		withExceptionDo:  [ :exception |
			self assert: exception description = 'There is no environment defined to resolve #secondsClock' ]