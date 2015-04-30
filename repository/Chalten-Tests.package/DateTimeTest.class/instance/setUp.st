initialization
setUp
	oneDay := 1 dayMeasure.
	december31Of2003 := DateTime date: December thirtyfirst , 2003 timeOfDay: (TimeOfDay hours: 00).
	december31Of2003On23Hours59Minutes59Seconds := DateTime
		date: December thirtyfirst , 2003
		timeOfDay: (TimeOfDay hours: 23 minutes: 59 seconds: 59).
	januaryFirstOf2004 := DateTime date: January first , 2004 timeOfDay: (TimeOfDay hours: 00).
	januaryFirstOf2004On00Hours00Minutes01Seconds := DateTime
		date: January first , 2004
		timeOfDay: (TimeOfDay hours: 00 minutes: 00 seconds: 01).
	januaryFirstOf2004On03Hours := DateTime date: January first , 2004 timeOfDay: (TimeOfDay hours: 03).
	januaryFirstOf2004On23Hours59Minutes58Seconds := DateTime
		date: January first , 2004
		timeOfDay: (TimeOfDay hours: 23 minutes: 59 seconds: 58).
	januaryFirstOf2004On23Hours59Minutes59Seconds := DateTime
		date: January first , 2004
		timeOfDay: (TimeOfDay hours: 23 minutes: 59 seconds: 59).
	januarySecondOf2004 := DateTime date: January second , 2004 timeOfDay: (TimeOfDay hours: 00).
	januarySecondOf2004On00Hours00Minutes01Seconds := DateTime
		date: January second , 2004
		timeOfDay: (TimeOfDay hours: 00 minutes: 00 seconds: 01).
	januarySecondOf2004On23Hours := DateTime date: January second , 2004 timeOfDay: (TimeOfDay hours: 23).
	januarySecondOf2004On23Hours59Minutes59Seconds := DateTime
		date: January second , 2004
		timeOfDay: (TimeOfDay hours: 23 minutes: 59 seconds: 59).
	januaryThirdOf2004 := DateTime date: January third , 2004 timeOfDay: (TimeOfDay hours: 00).
	hourInGreenwich := DateTime
		date: March eighth , 2008
		timeOfDay: (TimeOfDay hours: 20 minutes: 5)
		zone: TimeZones greenwich.
	hourInBsAs := DateTime
		date: March eighth , 2008
		timeOfDay: (TimeOfDay hours: 17 minutes: 5)
		zone: TimeZones buenosAires