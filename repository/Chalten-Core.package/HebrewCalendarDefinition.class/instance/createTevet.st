month creation - private
createTevet
	^ ChaltenMonth 
		named: self tevetName
		numbered: self tevetNumber
		definedAs: self tevetDefinition
		calendar: self