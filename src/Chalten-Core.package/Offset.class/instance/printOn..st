printing
printOn: aStream

	| hours |
	
	hours := (measure convertTo: TimeUnits hour) abs.
	aStream nextPutAll: (self signFor: measure).
	self print: (TimeOfDay hours: hours amount) on: aStream