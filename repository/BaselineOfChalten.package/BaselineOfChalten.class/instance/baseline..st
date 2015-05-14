baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [ 
		spec baseline: 'Aconcagua' with: [
			spec
				loads: #('Core');
				repository: 'github://mtaborda/aconcagua:master/repository' ].
		spec
			package: 'Chalten-Core' with: [ spec requires: 'Aconcagua' ];
			package: 'Chalten-Tests' with: [ spec requires: 'Chalten-Core' ].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('Chalten-Core');
			group: 'Tests' with: #('Chalten-Tests') ]
