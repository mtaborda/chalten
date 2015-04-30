test accessing time
testLocalTimeOffset

	self
		should: [ environment localTimeOffset ]
		raise: UndefinedEnvironmentException
		withExceptionDo:  [ :exception |
			self assert: exception description = 'There is no environment defined to resolve #localTimeOffset' ]