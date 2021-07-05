baseline
baseline: spec
	"spec for: #common do: [
		spec
			package: 'PoppyPrint-Core' with: [spec postLoadDoIt: #postLoadCore];
			package: 'PoppyPrint-Tests' with: [spec requires: 'default'].
		
		spec
			group: 'default' with: #('PoppyPrint-Core');
			group: 'tests' with: #('PoppyPrint-Tests')]"
	<baseline>

	spec for: #common do: [
		spec
			package: 'PoppyPrint-Tests' with: [spec requires: 'default'];
			package: 'PoppyPrint-Tests' with: [spec requires: 'PoppyPrint-Core'];
			package: 'PoppyPrint-Core' with: [spec postLoadDoIt: #postLoadCore]]