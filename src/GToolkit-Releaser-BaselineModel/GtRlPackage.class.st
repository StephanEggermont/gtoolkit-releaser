Class {
	#name : #GtRlPackage,
	#superclass : #GtRlNode,
	#instVars : [
		'name',
		'dependencies',
		'parentProject'
	],
	#category : #'GToolkit-Releaser-BaselineModel-Model'
}

{ #category : #accessing }
GtRlPackage >> dependencies [
	^ dependencies
]

{ #category : #accessing }
GtRlPackage >> dependencies: aSymbolArray [
	dependencies := aSymbolArray
]

{ #category : #accessing }
GtRlPackage >> name [
	^ name
]

{ #category : #accessing }
GtRlPackage >> name: aString [
	name := aString
]

{ #category : #accessing }
GtRlPackage >> parentProject [
	^ parentProject
]

{ #category : #accessing }
GtRlPackage >> parentProject: aProject [
	parentProject := aProject
]

{ #category : #printing }
GtRlPackage >> printOn: aStream [
	super printOn: aStream.
	aStream 
		nextPutAll: '(';
		nextPutAll: self name;
		nextPutAll: ')'
]