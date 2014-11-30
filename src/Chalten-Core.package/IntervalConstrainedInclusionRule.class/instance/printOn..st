printing
printOn: aStream

	aStream nextPutAll: 'From: '.
	self from printOn: aStream.
	aStream nextPutAll: ' to: '.
	self to printOn: aStream.
	aStream nextPutAll: ' -> '.
	decoratedRule printOn: aStream