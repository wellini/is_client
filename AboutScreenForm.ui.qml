import QtQuick 2.14
import QtQuick.Layouts 1.14

Item {
	id: root
	property alias mouseArea: mouseArea
	property alias root: root

	Rectangle {
		id: background
		anchors.fill: parent
		color: "#ff8705"
	}

	ColumnLayout {
		anchors.fill: parent

		Text {
			id: placeholderText
			text: "placeholder for about screen"
			Layout.fillHeight: false
			Layout.fillWidth: true
			Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
			font.pointSize: 30
			color: "white"

			MouseArea {
				id: mouseArea
				anchors.fill: parent
			}
		}

		TextInputRect {
			id: textInputRect
			Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
			Layout.fillHeight: true
			Layout.fillWidth: true
			Layout.maximumHeight: height1080p
			Layout.maximumWidth: width1080p
		}
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:720;width:1280}
}
##^##*/

