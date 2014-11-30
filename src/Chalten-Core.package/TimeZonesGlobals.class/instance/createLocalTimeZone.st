initialization - private
createLocalTimeZone

	^ self 
		createTimeZoneNamed: self localTimeZoneName
		offset: self localTimeZoneOffset