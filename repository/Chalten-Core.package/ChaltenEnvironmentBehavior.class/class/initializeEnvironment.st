initialization
initializeEnvironment

	|  environmentClass |
	environmentClass := self subclasses
		detect: [ :each | each isForCurrentPlatform ]
		ifNone: [ self undefinedEnvironment ].
	Smalltalk at:#ChaltenEnvironment put: environmentClass new