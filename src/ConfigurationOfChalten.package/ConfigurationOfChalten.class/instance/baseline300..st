baselines
baseline300: spec
	<version: '3.0.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: '- Chalten published to SmalltalkHub'.
			spec repository: 'http://smalltalkhub.com/mc/maxi/Chalten/main'.
			spec
				project: 'Aconcagua'
				with: [ 
					spec
						className: 'ConfigurationOfAconcagua';
						versionString: #stable;
						loads: #('Core');
						repository: 'http://smalltalkhub.com/mc/maxi/Aconcagua/main' ].
			spec
				package: 'Chalten-TimeModel-Core' with: [ spec requires: 'Aconcagua' ];
				package: 'Chalten-TimeModel-Tests' with: [ spec requires: 'Chalten-TimeModel-Core' ];
				package: 'Chalten-ChristianTimeModel-Core';
				package: 'Chalten-ChristianTimeModel-Tests' with: [ spec requires: 'Chalten-ChristianTimeModel-Core' ];
				package: 'Chalten-GregorianTimeModel-Core';
				package: 'Chalten-GregorianTimeModel-Tests' with: [ spec requires: 'Chalten-GregorianTimeModel-Core' ];
				package: 'Chalten-JulianTimeModel-Core';
				package: 'Chalten-JulianTimeModel-Tests' with: [ spec requires: 'Chalten-JulianTimeModel-Core' ];
				package: 'Chalten-HebrewTimeModel-Core';
				package: 'Chalten-HebrewTimeModel-Tests' with: [ spec requires: 'Chalten-HebrewTimeModel-Core' ];
				package: 'Chalten-IslamicTimeModel-Core';
				package: 'Chalten-IslamicTimeModel-Tests' with: [ spec requires: 'Chalten-IslamicTimeModel-Core' ];
				package: 'Chalten-TimeLineFilterModel-Core';
				package: 'Chalten-TimeLineFilterModel-Tests' with: [ spec requires: 'Chalten-TimeLineFilterModel-Core' ];
				package: 'Chalten-TimeZoneModel-Core';
				package: 'Chalten-TimeZoneModel-Tests' with: [ spec requires: 'Chalten-TimeZoneModel-Core' ].
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core'
					with:
						#('Chalten-TimeModel-Core' 'Chalten-ChristianTimeModel-Core' 'Chalten-GregorianTimeModel-Core' 'Chalten-JulianTimeModel-Core' 'Chalten-HebrewTimeModel-Core' 'Chalten-IslamicTimeModel-Core' 'Chalten-TimeLineFilterModel-Core' 'Chalten-TimeZoneModel-Core');
				group: 'Tests'
					with:
						#('Chalten-TimeModel-Tests' 'Chalten-ChristianTimeModel-Tests' 'Chalten-GregorianTimeModel-Tests' 'Chalten-JulianTimeModel-Tests' 'Chalten-HebrewTimeModel-Tests' 'Chalten-IslamicTimeModel-Tests' 'Chalten-TimeLineFilterModel-Tests' 'Chalten-TimeZoneModel-Tests');
				group: 'Gregorian-Core'
					with:
						#('Chalten-TimeModel-Core' 'Chalten-ChristianTimeModel-Core' 'Chalten-GregorianTimeModel-Core' 'Chalten-TimeLineFilterModel-Core' 'Chalten-TimeZoneModel-Core');
				group: 'Gregorian-Tests'
					with:
						#('Chalten-TimeModel-Tests' 'Chalten-ChristianTimeModel-Tests' 'Chalten-GregorianTimeModel-Tests' 'Chalten-TimeLineFilterModel-Tests' 'Chalten-TimeZoneModel-Tests') ]