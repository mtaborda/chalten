testing
canHandle: aChristianDate

	^aChristianDate month > February and: [aChristianDate year isLeap]