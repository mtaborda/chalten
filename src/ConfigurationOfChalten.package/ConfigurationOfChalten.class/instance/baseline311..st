baselines
baseline311: spec
	<version: '3.1.1-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec description: '- Chalten final for 4.x images'.
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
				package: 'Chalten-Core' with: [ spec requires: 'Aconcagua' ];
				package: 'Chalten-Tests' with: [ spec requires: 'Chalten-Core' ].
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('Chalten-Core');
				group: 'Tests' with: #('Chalten-Tests') ]