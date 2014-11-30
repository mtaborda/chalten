printing
printOn: aStream

	aStream nextPutAll: '(GMT'.
	offset printOn: aStream.
	aStream nextPut: $).
	aStream space.
	aStream nextPutAll: name