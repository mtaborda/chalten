comparing
hash

	| utcDateTime |
	
	utcDateTime := self convertTo: TimeZones universalTime.
	^utcDateTime date hash bitXor: utcDateTime timeOfDay hash