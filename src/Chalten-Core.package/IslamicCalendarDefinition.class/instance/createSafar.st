month creation - private
createSafar
	^ ChaltenMonth 
		named: self safarName
		numbered: self safarNumber
		definedAs: self safarDefinition
		calendar: self