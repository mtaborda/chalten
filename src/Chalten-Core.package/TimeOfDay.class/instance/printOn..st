printing
printOn: aStream

	aStream
		nextPutAll: (self toString: self hours);
		nextPut: $:;
		nextPutAll: (self toString: self minutes);
		nextPut: $:;
		nextPutAll: (self toString: self seconds)