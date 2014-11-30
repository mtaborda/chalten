initialization - private
createPacificStandardTimeZone

	^ self 
		createTimeZoneNamed: self pacificStandardTimeZoneName
		offset: self pacificStandardTimeZoneOffset