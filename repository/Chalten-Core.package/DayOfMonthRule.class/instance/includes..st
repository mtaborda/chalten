querying
includes: aDate

	| date |
	
	date := decoratedRule object calendar convert: aDate.
	^decoratedRule includes: date dayOfMonth