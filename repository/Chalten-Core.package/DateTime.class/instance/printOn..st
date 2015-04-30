printing
printOn: aStream

	date printOn: aStream.
	aStream space.
	timeOfDay printOn: aStream.
	aStream space.
	aStream nextPut: ${.
	zone printOn: aStream.
	aStream nextPut: $}