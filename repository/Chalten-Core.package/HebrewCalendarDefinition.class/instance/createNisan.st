month creation - private
createNisan
	^ ChaltenMonth 
		named: self nisanName
		numbered: self nisanNumber
		definedAs: self nisanDefinition
		calendar: self