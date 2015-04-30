accessing - private
pharoEpoch
	"Answer the Squeak/Pharo epoch.
	That is 00:00:00 on the morning of January 1, 1901 UTC"

	^DateTime
		date: January first, 1901
		timeOfDay: TimeOfDay firstTimeOfDay
		zone: TimeZones universalTime