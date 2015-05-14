initialize-release
postLoadInitialization

	ChaltenEnvironmentBehavior initializeAfterLoad.
	TimeUnitsGlobals initializeAfterLoad.
	CalendarDefinition allSubclassesDo: [ :each | each subclasses isEmpty
		ifTrue: [ each initializeAfterLoad ]].
	TimeOfDay initializeAfterLoad.
	TimeZonesGlobals initializeAfterLoad