day creation - private
createMonday
	^ Day 
		named: self mondayName
		positionInWeek: self mondayPositionInWeek
		calendar: self