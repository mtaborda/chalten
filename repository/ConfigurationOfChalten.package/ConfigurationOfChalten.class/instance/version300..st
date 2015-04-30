versions
version300: spec
	<version: '3.0.0' imports: #('3.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: '3.0.0 final'.
			spec author: 'MaximilianoTaborda'.
			spec
				package: 'Chalten-TimeModel-Core' with: 'Chalten-TimeModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-TimeModel-Tests' with: 'Chalten-TimeModel-Tests-MaximilianoTaborda.3.0.0';
				package: 'Chalten-ChristianTimeModel-Core' with: 'Chalten-ChristianTimeModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-ChristianTimeModel-Tests' with: 'Chalten-ChristianTimeModel-Tests-MaximilianoTaborda.3.0.0';
				package: 'Chalten-GregorianTimeModel-Core' with: 'Chalten-GregorianTimeModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-GregorianTimeModel-Tests' with: 'Chalten-GregorianTimeModel-Tests-MaximilianoTaborda.3.0.0';
				package: 'Chalten-JulianTimeModel-Core' with: 'Chalten-JulianTimeModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-JulianTimeModel-Tests' with: 'Chalten-JulianTimeModel-Tests-MaximilianoTaborda.3.0.0';
				package: 'Chalten-HebrewTimeModel-Core' with: 'Chalten-HebrewTimeModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-HebrewTimeModel-Tests' with: 'Chalten-HebrewTimeModel-Tests-MaximilianoTaborda.3.0.0';
				package: 'Chalten-IslamicTimeModel-Core' with: 'Chalten-IslamicTimeModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-IslamicTimeModel-Tests' with: 'Chalten-IslamicTimeModel-Tests-MaximilianoTaborda.3.0.0';
				package: 'Chalten-TimeLineFilterModel-Core' with: 'Chalten-TimeLineFilterModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-TimeLineFilterModel-Tests' with: 'Chalten-TimeLineFilterModel-Tests-MaximilianoTaborda.3.0.0';
				package: 'Chalten-TimeZoneModel-Core' with: 'Chalten-TimeZoneModel-Core-MaximilianoTaborda.3.0.0';
				package: 'Chalten-TimeZoneModel-Tests' with: 'Chalten-TimeZoneModel-Tests-MaximilianoTaborda.3.0.0' ]