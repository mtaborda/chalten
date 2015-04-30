initialization
initialize

	super initialize.
	YearType subclasses do: [:class | class initializeUniqueInstance].
	self initializeLeapType.
	self initializeNonleapType