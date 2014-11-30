printing
printOn: aStream

	self printOrdinalOn: aStream.
	self day printOn: aStream.
	aStream nextPutAll: ' of '.
	self month printOn: aStream