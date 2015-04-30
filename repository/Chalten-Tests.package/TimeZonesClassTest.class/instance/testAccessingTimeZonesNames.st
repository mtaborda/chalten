test accessing
testAccessingTimeZonesNames

	self assert: TimeZones localTimeZoneName = 'Local Time'.
	self assert: TimeZones buenosAiresTimeZoneName = 'Buenos Aires, Georgetown'.
	self assert: TimeZones greenwichTimeZoneName = 'Greenwich'.
	self assert: TimeZones pacificStandardTimeZoneName = 'PST Pacific Standard Time'.
	self assert: TimeZones universalTimeZoneName = 'Universal Time'.
	self assert: TimeZones britishSummerTimeZoneName = 'BST British Summer Time'.
	self assert: TimeZones buenosAiresSummerTimeZoneName = 'DST Buenos Aires, Georgetown'.
	self assert: TimeZones pacificDaylightTimeZoneName = 'PDT Pacific Daylight Time'