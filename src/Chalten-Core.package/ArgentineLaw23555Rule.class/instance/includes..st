querying
includes: aGregorianDate

	| includedDate |

	includedDate := self dayOfMonth ofYear: aGregorianDate year.
	includedDate := self goToPreviousOrNextMonday: includedDate.

	^aGregorianDate = includedDate