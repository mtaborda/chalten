test dates accessing
testFixedFromDate
	| nisanFirstOf1 marheshvanIITwelveOf1945 tevetTwentiethOf5767 |
	nisanFirstOf1 := Nisan first , 1.
	marheshvanIITwelveOf1945 := Marheshvan twelfth , 1945.
	tevetTwentiethOf5767 := Tevet twentieth , 5767.
	self
		assert: (HebrewCalendar numberOfDaysFromDate: nisanFirstOf1) = -1373249;
		assert: (HebrewCalendar numberOfDaysFromDate: marheshvanIITwelveOf1945) 
					= -663352;
		assert: (HebrewCalendar numberOfDaysFromDate: tevetTwentiethOf5767) 
					= 732686