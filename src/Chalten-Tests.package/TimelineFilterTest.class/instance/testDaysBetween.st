test
testDaysBetween

	| timeLineFilter days |

	timeLineFilter := TimelineFilter new.
	timeLineFilter
		addRules: (
			Array
				with: (timeLineFilter dayRule: GregorianCalendar saturday)
				with: (timeLineFilter dayRule: GregorianCalendar sunday))
		from: January first, 2004.
	days :=
		timeLineFilter
			daysBetween: December twentyseventh, 2003
			and: January fifth, 2004.

	self assert: days size = 2.
	self assert: (days includes: January third, 2004).
	self assert: (days includes: January fourth, 2004)