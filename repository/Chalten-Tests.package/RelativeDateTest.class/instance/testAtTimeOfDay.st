test accessing
testAtTimeOfDay

	self assert:
		(relativeDate atTimeOfDay: (TimeOfDay hours: 1)) =
			(absoluteDate atTimeOfDay: (TimeOfDay hours: 1))