Extension { #name : #IcePackage }

{ #category : #'*GToolkit-Releaser-IcebergExtensions' }
IcePackage >> gtPackageDescription [
	| description |
	description := self name asRopedText.
	self isLoaded ifFalse:[ 
		description attributes: {BlTextForegroundAttribute paint: Smalltalk ui theme disabledTextColor} ].
	self isModified ifTrue: [ 
		description := ('*', description asString) asRopedText.
		description attributes: {BlTextForegroundAttribute paint: (Color r: 0 g: 0.5 b: 0)} ].
	^ description
]

{ #category : #'*GToolkit-Releaser-IcebergExtensions' }
IcePackage >> gtPackageStatus [
	self isLoaded ifFalse: [ 
		^ 'Not loaded' asRopedText
				attributes: {BlTextForegroundAttribute paint: Smalltalk ui theme disabledTextColor};
				yourself ].
	self isModified ifTrue: [ ^ 'Uncommited changes' asRopedText ].
	^ 'Up to date' asRopedText
]
