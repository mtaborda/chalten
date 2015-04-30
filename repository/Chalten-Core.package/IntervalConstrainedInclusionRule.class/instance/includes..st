querying
includes: anObject

	^(self shouldHandle: anObject) and: [ decoratedRule includes: anObject ]