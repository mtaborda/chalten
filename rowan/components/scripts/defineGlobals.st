| symbolDictionary |
symbolDictionary := Rowan image 
	symbolDictNamed: 'Chalten'
	ifAbsent: [Error signal: 'Chalten symbol dictionary missing' ].

symbolDictionary at: #ChaltenEnvironment put: ChaltenEnvironmentBehavior initializeEnvironment.
symbolDictionary at: #TimeUnits put: (TimeUnitsGlobals initializeUniqueInstance; new).
symbolDictionary at: #TimeZones put: (TimeZonesGlobals initializeUniqueInstance; new).
"symbolDictionary at: #GregorianCalendar put: (GregorianCalendarDefinition initializeUniqueInstance; new)."
TimeOfDay initializeTimesOfDay.
