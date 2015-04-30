day creation - private
createSaturday
	^ Day 
		named: self saturdayName
		positionInWeek: self saturdayPositionInWeek
		calendar: self