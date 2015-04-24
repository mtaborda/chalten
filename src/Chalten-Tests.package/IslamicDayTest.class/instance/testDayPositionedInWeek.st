test accessing
testDayPositionedInWeek

	| day |

	day := yaumAlAhad.
	1 to: 7 do: [:aNumber | 
		self assert: (calendar dayPositionedInWeek: aNumber) = day.
		day := day next].
	self 
		should: [calendar dayPositionedInWeek: 0]
		raise: InvalidDayNumberException
		withExceptionDo: [:anException | 
			self assert: anException description = 'The number 0 is invalid as a day of a week'].
	self 
		should: [calendar dayPositionedInWeek: 8]
		raise: InvalidDayNumberException
		withExceptionDo: [:anException | 
			self assert: anException description = 'The number 8 is invalid as a day of a week']