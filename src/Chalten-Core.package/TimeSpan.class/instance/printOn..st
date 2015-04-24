printing
printOn: aStream

	duration printOn: aStream.
	aStream nextPutAll: ' from '.
	from printOn: aStream