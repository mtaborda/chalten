test enumeration
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
		timeLineFilter negated
			daysBetween: December twentyseventh, 2003
			and: January fifth, 2004.

	self assert: days size = 8.
	self deny: (days includes: January third, 2004).
	self deny: (days includes: January fourth, 2004)