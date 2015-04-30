test creation
testDayCreation

	| otherYaumAlAhad otherYaumAlIthnayna otherYaumAthThalatha otherYaumAlArbaa otherYaumAlHamis otherYaumAlJuma otherYaumAsSabt |

	otherYaumAlAhad := IslamicCalendar createYaumAlAhad.
	otherYaumAlIthnayna := IslamicCalendar createYaumAlIthnayna.
	otherYaumAthThalatha:= IslamicCalendar createYaumAthThalatha.
	otherYaumAlArbaa := IslamicCalendar createYaumAlArbaa.
	otherYaumAlHamis := IslamicCalendar createYaumAlHamis.
	otherYaumAlJuma := IslamicCalendar createYaumAlJuma.
	otherYaumAsSabt := IslamicCalendar createYaumAsSabt.

	self assert: otherYaumAlAhad name = yaumAlAhad name.
	self assert: otherYaumAlAhad positionInWeek = yaumAlAhad positionInWeek.
	self assert: otherYaumAlIthnayna name = yaumAlIthnayna name.
	self assert: otherYaumAlIthnayna positionInWeek = yaumAlIthnayna positionInWeek.
	self assert: otherYaumAthThalatha name = yaumAthThalatha name.
	self assert: otherYaumAthThalatha positionInWeek = yaumAthThalatha positionInWeek.
	self assert: otherYaumAlArbaa name = yaumAlArbaa name.
	self assert: otherYaumAlArbaa positionInWeek = yaumAlArbaa positionInWeek.
	self assert: otherYaumAlHamis name = yaumAlHamis name.
	self assert: otherYaumAlHamis positionInWeek = yaumAlHamis positionInWeek.
	self assert: otherYaumAlJuma name = yaumAlJuma name.
	self assert: otherYaumAlJuma positionInWeek = yaumAlJuma positionInWeek.
	self assert: otherYaumAsSabt name = yaumAsSabt name.
	self assert: otherYaumAsSabt positionInWeek = yaumAsSabt positionInWeek