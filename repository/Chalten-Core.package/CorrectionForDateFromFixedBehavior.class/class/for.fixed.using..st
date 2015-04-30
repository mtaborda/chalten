instance creation
for: aYearNumber fixed: aNumber using: aCalendar

	| handleClass |

	handleClass :=
		self subclasses detect: [:eachSubclass |
			eachSubclass canHandle: aYearNumber fixed: aNumber using: aCalendar].
	^handleClass new