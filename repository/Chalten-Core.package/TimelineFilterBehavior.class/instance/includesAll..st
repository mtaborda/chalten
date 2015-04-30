querying - included
includesAll: aCollection

	^aCollection allSatisfy: [:each | self includes: each]