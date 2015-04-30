test months accessing
testMonthNamed

	self
		assert: (IslamicCalendar monthNamed: 'Muharram') = Muharram;
		assert: (IslamicCalendar monthNamed: 'Safar') = Safar;
		assert: (IslamicCalendar monthNamed: 'Rabi` I (Rabi` al-Awwal)') = RabiI;
		assert: (IslamicCalendar monthNamed: 'Rabi` II (Rabi` al-Ahir)') = RabiII;
		assert: (IslamicCalendar monthNamed: 'Jumada I (Jumada al-Ula)') = JumadaI;
		assert: (IslamicCalendar monthNamed: 'Jumada II (Jumada al-Ahira)') = JumadaII;
		assert: (IslamicCalendar monthNamed: 'Rajab') = Rajab;
		assert: (IslamicCalendar monthNamed: 'Sha`ban') = Shaban;
		assert: (IslamicCalendar monthNamed: 'Ramadan') = Ramadan;
		assert: (IslamicCalendar monthNamed: 'Shawwal') = Shawwal;
		assert: (IslamicCalendar monthNamed: 'Dhu al-Qa`da') = DhuAlQada;
		assert: (IslamicCalendar monthNamed: 'Dhu al-Hijja') = DhuAlHijja.
		
	self
		should: [ GregorianCalendar monthNamed: 'invalid name' ]
		raise: InvalidMonthNameException
		withExceptionDo: [ :ex | self assert: ex description = 'invalid name is an invalid name for a month' ]