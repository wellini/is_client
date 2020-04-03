import QtQuick 2.14

Rectangle {
	id: buttonRect
	width: 238
	height: 101
	color: "#ffffff"
	radius: height * 0.5
	property alias buttonMouseArea: buttonMouseArea
	property alias textColor: buttonText.color
	property alias text: buttonText.text
	property alias rectColor: buttonRect.color

	Text {
		id: buttonText
		color: "#ff8705"
		text: qsTr("Button")
		font.pointSize: 38
		font.bold: true
		font.family: "Verdana"
		verticalAlignment: Text.AlignVCenter
		horizontalAlignment: Text.AlignHCenter
		anchors.fill: parent

		MouseArea {
			id: buttonMouseArea
			hoverEnabled: true
			enabled: true
			anchors.bottomMargin: 6
			anchors.topMargin: 6
			anchors.rightMargin: 10
			anchors.leftMargin: 10
			anchors.fill: parent
		}
	}
}
