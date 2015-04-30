test comparing
testHash
	| anotherRelativeDate |
	anotherRelativeDate := RelativeDate
		timespan: (TimeSpan from: January first , 2004 duration: 72 hoursMeasure)
		using: timelineFilter negated.
	self
		assert: relativeDate hash = anotherRelativeDate hash;
		assert: relativeDate hash = absoluteDate hash