test
testAddRuleFromTo

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter
		addRule: (timeLineFilter dayRule: GregorianCalendar saturday)
		from: January first, 2004
		to: January ninth, 2004.

	self assert: (timeLineFilter includes: January third, 2004).
	self deny: (timeLineFilter includes: December twentyseventh, 2004).
	self deny: (timeLineFilter includes: January tenth, 2004)