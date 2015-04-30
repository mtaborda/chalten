month creation - private
createAv
	^ ChaltenMonth 
		named: self avName
		numbered: self avNumber
		definedAs: self avDefinition
		calendar: self