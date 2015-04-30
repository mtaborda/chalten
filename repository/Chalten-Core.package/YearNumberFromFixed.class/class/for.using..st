instance creation
for: aNumberOfDays using: aCalendar

	| handleClass |

	handleClass := self subclasses detect: [:eachSubclass | eachSubclass canHandle: aCalendar].
	^handleClass new initializeFor: aNumberOfDays using: aCalendar