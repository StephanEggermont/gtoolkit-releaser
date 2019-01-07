Class {
	#name : #JenkinsClient,
	#superclass : #Object,
	#instVars : [
		'username',
		'token',
		'url',
		'jobs',
		'znclient'
	],
	#category : #'GToolkit-Releaser-Jenkins'
}

{ #category : #accessing }
JenkinsClient >> jobs [
	| jobsArray |
	jobs ifNil: [ 
		jobs := znclient get: ('' join: { url . '/api/json?tree=jobs[name]'}).
	].
	jobsArray := (STON fromString: jobs) at: 'jobs'.
	^ jobsArray collect: [ :job | JenkinsJob name: (job at:'name') client: znclient url: url]
]

{ #category : #accessing }
JenkinsClient >> username: anUsername token: aToken url: anUrl [
	znclient := ZnClient new
   username: anUsername password: aToken.
	url := anUrl.
]