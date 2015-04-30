test timezones creation
testCreateTimeZoneNamedOfsset
	| zone |
	zone := TimeZones createTimeZoneNamed: 'Test Time Zone' offset: (Offset of: -3).
	self assert: zone offset = (Offset ofHours: -3 hoursMeasure).
	self assert: zone printString = '(GMT-03:00) Test Time Zone'