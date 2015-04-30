instance creation
for: aYear

	| handleClass |

	handleClass := self subclasses detect: [:eachSubclass | eachSubclass canHandle: aYear].
	^handleClass new