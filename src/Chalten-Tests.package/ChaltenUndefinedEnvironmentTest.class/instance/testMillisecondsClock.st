test accessing time
testMillisecondsClock

	self
		should: [ environment millisecondsClock ]
		raise: UndefinedEnvironmentException
		withExceptionDo:  [ :exception |
			self assert: exception description = 'There is no environment defined to resolve #millisecondsClock' ]