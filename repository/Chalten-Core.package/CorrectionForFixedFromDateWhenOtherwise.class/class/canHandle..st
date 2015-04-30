testing
canHandle: aChristianDate

	^(aChristianDate month <= February) not
		and: [(aChristianDate month > February and: [aChristianDate year isLeap]) not]