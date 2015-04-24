printing - private
printOrdinalOn: aStream

	| index |
	index :=  (ordinal / 10) fractionPart * 10.
	(#(0 11 12) includes: ordinal) ifTrue: [ index := 4 ].
	index := index min: 4.
	ordinal printOn: aStream.
	aStream
		nextPutAll: (#('st' 'nd' 'rd' 'th') at: index);
		space