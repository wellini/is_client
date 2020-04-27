import QtQuick 2.14

Item {
	id: root
	property alias mouseArea: mouseArea
	property alias root: root

	Rectangle {
		id: background
		anchors.fill: parent
		color: "#ff8705"
	}

	Text {
		id: placeholderText
		text: "placeholder for about screen"
		font.pointSize: 30
		color: "white"
		anchors.centerIn: parent

		MouseArea {
			id: mouseArea
			anchors.fill: parent
		}
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

