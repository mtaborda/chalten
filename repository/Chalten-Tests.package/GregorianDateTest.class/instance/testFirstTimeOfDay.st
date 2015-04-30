test accessing datetime
testFirstTimeOfDay

	self assert: (May fourth, 2014) firstTimeOfDay = (DateTime
		date: May fourth, 2014
		timeOfDay: TimeOfDay firstTimeOfDay)