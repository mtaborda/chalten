querying - private
goToPreviousOrNextMonday: aGregorianDate

	| gregorianDate |

	gregorianDate := self goToPreviousMondayIfNeeded: aGregorianDate.
	gregorianDate := self goToNextMondayIfNeeded: gregorianDate.

	^gregorianDate