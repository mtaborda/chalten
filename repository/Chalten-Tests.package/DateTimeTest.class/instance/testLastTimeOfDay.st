test enumerating
testLastTimeOfDay

	self assert: januaryFirstOf2004On23Hours59Minutes59Seconds lastTimeOfDay date = (January first, 2004).
	self assert: januaryFirstOf2004On23Hours59Minutes59Seconds lastTimeOfDay timeOfDay = TimeOfDay lastTimeOfDay.
	
	self assert: (hourInBsAs lastTimeOfDay previous: 3 hoursMeasure)= hourInGreenwich lastTimeOfDay.
	self assert: (hourInGreenwich lastTimeOfDay next: 3 hoursMeasure) = hourInBsAs lastTimeOfDay