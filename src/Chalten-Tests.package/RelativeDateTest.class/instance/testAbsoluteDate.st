test absolute date
testAbsoluteDate

	| absolute |

	absolute := relativeDate absoluteDate.
	self assert: absolute = relativeDate absoluteDate.
	timelineFilter addDateRule: January sixth, 2004.
	self deny: absolute = relativeDate absoluteDate.
	self assert: absolute next = relativeDate absoluteDate