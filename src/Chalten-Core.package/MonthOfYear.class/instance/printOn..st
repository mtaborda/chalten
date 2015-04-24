printing
printOn: aStream

	month printOn: aStream.
	aStream nextPutAll: ' of '.
	year printOn: aStream