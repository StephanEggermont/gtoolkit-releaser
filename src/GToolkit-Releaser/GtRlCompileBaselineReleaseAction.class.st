Class {
	#name : #GtRlCompileBaselineReleaseAction,
	#superclass : #GtRlReleaseAction,
	#instVars : [
		'projectRelease'
	],
	#category : #'GToolkit-Releaser'
}

{ #category : #'instance creation' }
GtRlCompileBaselineReleaseAction class >> forProjectRelease: aProjectRelease [
	^ self new
		projectRelease: aProjectRelease
]

{ #category : #printing }
GtRlCompileBaselineReleaseAction >> description [
	^ 'Compile baseline ', self projectRelease project baselineClass name
]

{ #category : #printing }
GtRlCompileBaselineReleaseAction >> descriptionDetails [
	^ self projectRelease project baselineClass name
]

{ #category : #ui }
GtRlCompileBaselineReleaseAction >> gtGeneratedSourceFor: aView [
	<gtView> 
	^ self projectRelease 
		ifNil: [ aView ]
		ifNotNil: [ self projectRelease gtGeneratedSourceFor: aView ]
]

{ #category : #accessing }
GtRlCompileBaselineReleaseAction >> name [ 	
	^ 'Compile baseline'
]

{ #category : #actions }
GtRlCompileBaselineReleaseAction >> performAction [
	self projectRelease compileBaselineMethod
]

{ #category : #accessing }
GtRlCompileBaselineReleaseAction >> projectRelease [
	^ projectRelease
]

{ #category : #accessing }
GtRlCompileBaselineReleaseAction >> projectRelease: aProjectRelease [
	projectRelease := aProjectRelease
]

{ #category : #accessing }
GtRlCompileBaselineReleaseAction >> repositoryRelease [
	^ self projectRelease repositoryRelease
]