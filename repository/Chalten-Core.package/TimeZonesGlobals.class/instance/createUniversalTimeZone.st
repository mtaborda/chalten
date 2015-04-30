initialization - private
createUniversalTimeZone

	^ self 
		createTimeZoneNamed: self universalTimeZoneName
		offset: self universalTimeZoneOffset