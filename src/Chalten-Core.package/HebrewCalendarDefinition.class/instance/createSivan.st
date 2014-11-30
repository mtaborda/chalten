month creation - private
createSivan
	^ ChaltenMonth 
		named: self sivanName
		numbered: self sivanNumber
		definedAs: self sivanDefinition
		calendar: self