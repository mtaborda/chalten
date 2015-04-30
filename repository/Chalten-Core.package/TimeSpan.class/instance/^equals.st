comparing
= anObject

	^self class = anObject class
		and: [ from = anObject from 
		and: [ duration = anObject duration ]]