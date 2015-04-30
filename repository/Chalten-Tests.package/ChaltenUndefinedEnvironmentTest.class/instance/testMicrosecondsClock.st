test accessing time
testMicrosecondsClock

	self
		should: [ environment microsecondsClock ]
		raise: UndefinedEnvironmentException
		withExceptionDo:  [ :exception |
			self assert: exception description = 'There is no environment defined to resolve #microsecondsClock' ]