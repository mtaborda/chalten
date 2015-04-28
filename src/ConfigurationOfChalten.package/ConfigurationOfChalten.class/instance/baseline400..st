baselines
baseline400: spec
	<version: '4.0.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: '- Chalten final for 4.x images'.
			spec repository: 'github://mtaborda/chalten:master/src'.
			spec
				package: 'Chalten-Core' with: [ spec requires: 'Aconcagua-Core' ];
				package: 'Chalten-Tests' with: [ spec requires: 'Chalten-Core' ].
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('Chalten-Core');
				group: 'Tests' with: #('Chalten-Tests') ]