month creation - private
createAdar
	^ ChaltenMonth 
		named: self adarName
		numbered: self adarNumber
		definedAs: self adarDefinition
		calendar: self