// ButtonRect
import QtQuick 2.14

Rectangle {
	id: rect
	width: 238
	// Preserve the original width/height ratio
	height: width / width1080p * height1080p
	color: rectNormalColor
	radius: height / 2
	border.color: "#ffffff"
	border.width: 5

	// MouseArea for handling mouse events
	property alias mouseArea: mouseArea
	// Rectangle's border's width and color
	property alias rectBorderWidth: rect.border.width
	property alias rectBorderColor: rect.border.color
	// Rectangle's regular and hover colors; Direct access to Rectangle's color
	property alias rectNormalColor: rect.rectNormalColor
	property alias rectHoverColor: rect.rectHoverColor
	property alias rectColor: rect.color
	// Button's text's properties
	property alias textColor: buttonText.color
	property alias textPointSize: buttonText.font.pointSize
	property alias text: buttonText.text
	// Original 1080p size of the button
	property alias width1080p: rect.width1080p
	property alias height1080p: rect.height1080p

	property color rectNormalColor: "#ffffff"
	property color rectHoverColor: "#ffffff"
	property int width1080p: 238
	property int height1080p: 101

	Text {
		id: buttonText
		x: 10
		y: 6
		color: "#ff8705"
		text: qsTr("Button")
		anchors.rightMargin: 10
		anchors.leftMargin: 10
		anchors.bottomMargin: 6
		anchors.topMargin: 6
		fontSizeMode: Text.Fit
		font.pointSize: 38
		font.bold: true
		font.family: "Verdana"
		verticalAlignment: Text.AlignVCenter
		horizontalAlignment: Text.AlignHCenter
		anchors.fill: parent

		MouseArea {
			id: mouseArea
			hoverEnabled: true
			enabled: true
			anchors.fill: parent
			cursorShape: Qt.PointingHandCursor
		}
	}
}
