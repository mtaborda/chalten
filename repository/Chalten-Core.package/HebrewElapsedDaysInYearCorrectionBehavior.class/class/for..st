instance creation
for: anAmountOfdays

	| handleClass |

	handleClass := self subclasses detect: [:eachSubclass | eachSubclass canHandle: anAmountOfdays].
	^handleClass new