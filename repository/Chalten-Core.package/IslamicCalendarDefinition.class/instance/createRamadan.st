month creation - private
createRamadan
	^ ChaltenMonth 
		named: self ramadanName
		numbered: self ramadanNumber
		definedAs: self ramadanDefinition
		calendar: self