test accessing datetime
testLastTimeOfDay

	self assert: (May fourth, 2014) lastTimeOfDay = (DateTime
		date: May fourth, 2014
		timeOfDay: TimeOfDay lastTimeOfDay)