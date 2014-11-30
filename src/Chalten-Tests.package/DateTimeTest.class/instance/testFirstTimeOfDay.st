test enumerating
testFirstTimeOfDay

	self assert: januaryFirstOf2004On23Hours59Minutes59Seconds firstTimeOfDay = januaryFirstOf2004.
	self assert: januaryFirstOf2004 firstTimeOfDay = januaryFirstOf2004.
	
	self assert: (hourInBsAs firstTimeOfDay previous: 3 hoursMeasure) = hourInGreenwich firstTimeOfDay.
	self assert: (hourInGreenwich firstTimeOfDay next: 3 hoursMeasure) = hourInBsAs firstTimeOfDay