initialization - private
createGreenwichTimeZone

	^ self 
		createTimeZoneNamed: self greenwichTimeZoneName
		offset: self greenwichTimeZoneOffset