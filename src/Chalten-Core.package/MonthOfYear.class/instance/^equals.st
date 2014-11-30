comparing
= anObject

	^self class = anObject class 
		and: [month = anObject month 
		and: [year = anObject year]]