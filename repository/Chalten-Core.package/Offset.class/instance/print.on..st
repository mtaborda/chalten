printing - private
print: aTimeOfDay on: aStream

	aStream
		nextPutAll: (aTimeOfDay hours amount asString padLeftTo: 2 with: $0);
		nextPut: $:;
		nextPutAll: (aTimeOfDay minutes amount asString padLeftTo: 2 with: $0)