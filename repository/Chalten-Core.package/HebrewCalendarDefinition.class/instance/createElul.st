month creation - private
createElul
	^ ChaltenMonth 
		named: self elulName
		numbered: self elulNumber
		definedAs: self elulDefinition
		calendar: self