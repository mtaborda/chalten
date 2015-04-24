comparing
= anObject

	^self == anObject 
		or: [ (anObject isKindOf: ChaltenYear) 
		and: [ self number = anObject number ]]