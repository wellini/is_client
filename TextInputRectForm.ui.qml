import QtQuick 2.14

Rectangle {
	id: rect
	color: "#ffffff"
	width: width1080p
	height: height1080p
	radius: height / 2

	readonly property color taskKnightOrange: "#ff8705"
	// Values native to a 1080p screen (1920x1080)
	readonly property int width1080p: 741
	readonly property int height1080p: 101
	readonly property int fontPointSize1080p: 37
	readonly property int fontPasswordPointSize1080p: 22
	// Wether this form is for passwords or not
	property bool isPassword: false
	// Values that need javascript (in related .qml file)
	// None so far

	// Aliases
	property alias isPassword: rect.isPassword
	property alias text: textInput.text
	property alias rectWidth: rect.width
	property alias rectHeight: rect.height
	// Readonly aliases
	property alias taskKnightOrange: rect.taskKnightOrange
	property alias width1080p: rect.width1080p
	property alias height1080p: rect.height1080p
	property alias fontPointSize1080p: rect.fontPointSize1080p
	property alias fontPasswordPointSize1080p: rect.fontPasswordPointSize1080p

	TextInput {
		id: textInput
		text: "sample text"
		echoMode: rect.isPassword ? TextInput.Password : TextInput.Normal
		font.bold: true
		font.pointSize: rect.isPassword ? rect.fontPasswordPointSize1080p : rect.fontPointSize1080p
		activeFocusOnPress: true
		autoScroll: true
		anchors.fill: parent
		color: taskKnightOrange
		selectionColor: color
		selectedTextColor: rect.color
		rightPadding: 20
		leftPadding: 20
		selectByMouse: true
		verticalAlignment: Text.AlignVCenter
		font.family: "Verdana"
	}
}

/*##^##
Designer {
	D{i:0;height:101;width:741}
}
##^##*/

