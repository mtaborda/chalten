instance creation
for: aYear

	| delayClass |

	delayClass := self subclasses detect: [:eachSubclass | eachSubclass canHandle: aYear].
	^delayClass new