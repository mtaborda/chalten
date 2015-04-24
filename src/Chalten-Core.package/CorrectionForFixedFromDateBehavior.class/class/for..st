instance creation
for: aChristianDate

	| handleClass |

	handleClass := self subclasses detect: [:eachSubclass | eachSubclass canHandle: aChristianDate].
	^handleClass new