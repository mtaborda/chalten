month creation - private
createKislev
	^ ChaltenMonth 
		named: self kislevName
		numbered: self kislevNumber
		definedAs: self kislevDefinition
		calendar: self