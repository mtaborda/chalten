test dates accessing
testDateFromFixed
	| nisanFirstOf1 tevetTwentiethOf5767 marheshvanTwelfthOf1945 |
	nisanFirstOf1 := Nisan first , 1.
	tevetTwentiethOf5767 := Tevet twentieth , 5767.
	marheshvanTwelfthOf1945 := Marheshvan twelfth , 1945.
	self 
		assert: (HebrewCalendar dateFromNumberOfDays: -1373249) = nisanFirstOf1.
	self assert: (HebrewCalendar dateFromNumberOfDays: 732686) 
				= tevetTwentiethOf5767.
	self assert: (HebrewCalendar dateFromNumberOfDays: -663352) 
				= marheshvanTwelfthOf1945