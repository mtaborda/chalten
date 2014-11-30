day creation - private
createSunday
	^ Day 
		named: self sundayName
		positionInWeek: self sundayPositionInWeek
		calendar: self