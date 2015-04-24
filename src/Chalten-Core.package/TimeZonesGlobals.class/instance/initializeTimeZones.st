initialization - private
initializeTimeZones

	timeZones := Dictionary new.
	timeZones
		at: self localTimeZoneName put: self createLocalTimeZone;
		at: self universalTimeZoneName put: self createUniversalTimeZone;
		at: self greenwichTimeZoneName put: self createGreenwichTimeZone;
		at: self britishSummerTimeZoneName put: self createBritishSummerTimeZone;
		at: self buenosAiresTimeZoneName put: self createBuenosAiresTimeZone;
		at: self buenosAiresSummerTimeZoneName put: self createBuenosAiresSummerTimeZone;
		at: self pacificStandardTimeZoneName put: self createPacificStandardTimeZone;
		at: self pacificDaylightTimeZoneName put: self createPacificDaylightTimeZone