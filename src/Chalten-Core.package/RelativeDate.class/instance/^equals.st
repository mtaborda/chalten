comparing
= anObject

	^self == anObject or: [
		(self class = anObject class and: [self absoluteDate = anObject absoluteDate])
			or: [self absoluteDate = anObject]]