import QtQuick 2.14
import QtQuick.Layouts 1.14

Item {
	id: root
	readonly property color taskKnightOrange: "#ff8705"
	readonly property int fontPointSize1080p: 76
	readonly property double headerHeightRatio1080p: 0.228

	property alias flavourText: header.text
	property alias confirmButton: confirmButton
	property alias mouseArea: mouseArea

	Rectangle {
		id: background
		anchors.fill: parent
		color: taskKnightOrange

		Text {
			id: header
			height: background.height * headerHeightRatio1080p
			color: "#ffffff"
			text: qsTr("ENTER FLAVOUR TEXT HERE")
			font.pointSize: 76
			font.bold: true
			font.family: "Verdana"
			verticalAlignment: Text.AlignVCenter
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: parent.top
			horizontalAlignment: Text.AlignHCenter
		}

		ColumnLayout {
			id: columnLayout
			anchors.top: header.bottom
			anchors.right: parent.right
			anchors.bottom: parent.bottom
			anchors.left: parent.left

			Text {
				id: textEnterCode
				color: "#ffffff"
				text: qsTr("Enter verification code")
				Layout.fillHeight: true
				Layout.maximumHeight: 69
				Layout.fillWidth: true
				horizontalAlignment: Text.AlignHCenter
				Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
				font.bold: true
				font.family: "Verdana"
				font.pointSize: 38
			}

			TextInputRect {
				id: codeRect
				text: ""
				Layout.fillHeight: true
				Layout.fillWidth: true
				Layout.maximumWidth: width1080p
				Layout.maximumHeight: height1080p
				Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
			}

			ButtonRect {
				id: confirmButton
				text: "Confirm"
				Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
				Layout.fillHeight: true
				Layout.fillWidth: true
				Layout.maximumHeight: height1080p
				Layout.maximumWidth: width1080p
			}
		}

  MouseArea {
	  id: mouseArea
	  anchors.fill: parent
  }
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:1080;width:1920}
}
##^##*/

