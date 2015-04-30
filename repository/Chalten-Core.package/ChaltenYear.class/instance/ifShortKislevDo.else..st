*Chalten-Core-HebrewModel
ifShortKislevDo: aBlock else: anotherBlock

	^calendar
		ifShortKislevIn: self
		do: aBlock
		else: anotherBlock