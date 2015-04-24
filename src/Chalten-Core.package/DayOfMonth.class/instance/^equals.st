comparing
= anObject

	^self class = anObject class and: [
		month = anObject month and: [dayNumber = anObject dayNumber]]