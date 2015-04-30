test
testAddRulesFrom

	| timeLineFilter |

	timeLineFilter := TimelineFilter new.
	timeLineFilter
		addRules: (
			Array
				with: (timeLineFilter dayRule: GregorianCalendar saturday)
				with: (timeLineFilter dayRule: GregorianCalendar sunday))
		from: January first, 2004.

	self assert: (timeLineFilter includes: January third, 2004).
	self assert: (timeLineFilter includes: January fourth, 2004).
	self deny: (timeLineFilter includes: December twentyseventh,2004).
	self deny: (timeLineFilter includes: December twentyeighth, 2003)