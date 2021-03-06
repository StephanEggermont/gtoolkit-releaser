Class {
	#name : #WorkflowJob,
	#superclass : #JenkinsURL,
	#instVars : [
		'_name',
		'_parent',
		'_lastBuild',
		'_builds'
	],
	#category : #'GToolkit-Releaser-Jenkins-Generated-OrgJenkinsciPluginsWorkflowJob'
}

{ #category : #accessing }
WorkflowJob >> builds [
	^ _builds
]

{ #category : #accessing }
WorkflowJob >> gtBuildsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Builds' translated;
		priority: 10;
		items: [ self builds ];
		column: 'Name' translated do: [ :aColumn | 
			aColumn 
				item: [ :job | job name ]; 
				matchParent ];
		column: 'Status' translated do: [ :aColumn | 
			aColumn 
				item: [ :job | job result ]; 
				matchParent ]
]

{ #category : #accessing }
WorkflowJob >> name [
	^ _name
]

{ #category : #accessing }
WorkflowJob >> znclient [ 
	^ _parent znclient 
]
