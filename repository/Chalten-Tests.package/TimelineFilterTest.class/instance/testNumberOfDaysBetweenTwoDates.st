test
testNumberOfDaysBetweenTwoDates
	| timeLineFilter rule1 rule2 rule3 |
	timeLineFilter := TimelineFilter new.
	rule1 := timeLineFilter dateRule: September fourteenth , 2005.
	rule2 := timeLineFilter dateRule: September fifteenth , 2005.
	rule3 := timeLineFilter dateRule: September sixteenth , 2005.
	timeLineFilter addRules: (OrderedCollection with: rule1 with: rule2 with: rule3).
	self
		assert:
			(timeLineFilter negated numberOfDaysBetween: September first , 2005 and: September twentieth , 2005) = 17 daysMeasure