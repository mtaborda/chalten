test accessing
testAccessingTimeZonesOffsets

	self assert: TimeZones localTimeZoneOffset = (Offset of: ChaltenEnvironment localTimeOffset).
	self assert: TimeZones buenosAiresTimeZoneOffset = (Offset of: -3).
	self assert: TimeZones greenwichTimeZoneOffset = (Offset of: 0).
	self assert: TimeZones pacificStandardTimeZoneOffset = (Offset of: -8).
	self assert: TimeZones universalTimeZoneOffset = (Offset of: 0).
	self assert: TimeZones britishSummerTimeZoneOffset = (Offset of: 1).
	self assert: TimeZones buenosAiresSummerTimeZoneOffset = (Offset of: -2).
	self assert: TimeZones pacificDaylightTimeZoneOffset = (Offset of: -7)