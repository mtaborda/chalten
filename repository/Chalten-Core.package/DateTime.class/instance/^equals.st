comparing
= anObject

	^(anObject isKindOf: DateTime) and: [
		self isTheSameInstantThan: anObject ]