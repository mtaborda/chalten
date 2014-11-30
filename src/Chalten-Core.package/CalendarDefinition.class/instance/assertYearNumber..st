year preconditions
assertYearNumber: aNumber

	(self isValidYearNumber: aNumber) 
		ifFalse: [InvalidYearNumberException signalNumber: aNumber calendar: self]