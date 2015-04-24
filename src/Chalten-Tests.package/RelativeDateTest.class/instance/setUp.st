initialization
setUp
	timelineFilter := TimelineFilter new.
	timelineFilter addDayRule: GregorianCalendar saturday.
	timelineFilter addDayRule: GregorianCalendar sunday.
	relativeDate := RelativeDate
		timespan: (TimeSpan from: January first , 2004 duration: 72 hoursMeasure)
		using: timelineFilter negated.
	absoluteDate := January sixth , 2004.
	twoDays := 2 daysMeasure