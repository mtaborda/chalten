instance creation - private
createYear: aNumber calendar: aCalendar

	^self new initializeNumber: aNumber type: (self typeFor: aNumber calendar: aCalendar) calendar: aCalendar