test querying
testTimeFromMidnight

	self
		assert: januaryFirstOf2004On03Hours timeFromMidnight = (TimeOfDay hours: 03) timeFromMidnight.
	self assert: januaryFirstOf2004 timeFromMidnight = (TimeOfDay hours: 00) timeFromMidnight.
	self assert:
		januaryFirstOf2004On23Hours59Minutes59Seconds timeFromMidnight =
			(TimeOfDay hours: 23 minutes: 59 seconds: 59) timeFromMidnight