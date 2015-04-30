initialization - private
createBritishSummerTimeZone

	^ self 
		createTimeZoneNamed: self britishSummerTimeZoneName
		offset: self britishSummerTimeZoneOffset