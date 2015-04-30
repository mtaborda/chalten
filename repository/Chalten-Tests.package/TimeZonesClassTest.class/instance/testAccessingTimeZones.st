test accessing
testAccessingTimeZones

	self assert: TimeZones local = (TimeZones timeZoneNamed: TimeZones localTimeZoneName).
	self assert: TimeZones buenosAires = (TimeZones timeZoneNamed: TimeZones buenosAiresTimeZoneName).
	self assert: TimeZones greenwich = (TimeZones timeZoneNamed: TimeZones greenwichTimeZoneName).
	self assert: TimeZones pacificStandardTime = (TimeZones timeZoneNamed: TimeZones pacificStandardTimeZoneName).
	self assert: TimeZones universalTime = (TimeZones timeZoneNamed: TimeZones universalTimeZoneName).
	self assert: TimeZones britishSummerTime = (TimeZones timeZoneNamed: TimeZones britishSummerTimeZoneName).
	self assert: TimeZones buenosAiresSummerTime = (TimeZones timeZoneNamed: TimeZones buenosAiresSummerTimeZoneName).
	self assert: TimeZones pacificDaylightTime = (TimeZones timeZoneNamed: TimeZones pacificDaylightTimeZoneName)