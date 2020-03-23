import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.14

Item {
	id: startScreen
	property alias startScreen: startScreen
	property alias rowLayout: rowLayout
	property alias aboutButton: aboutButton
	property alias signUpButton: signUpButton
	property alias signInButton: signInButton
	property alias aboutRect: aboutRect
	property alias aboutText: aboutText

	Rectangle {
		id: background
		color: "#ff8705"
		anchors.rightMargin: 0
		anchors.bottomMargin: 0
		anchors.leftMargin: 0
		anchors.topMargin: 0
		anchors.fill: parent
	}

	RowLayout {
		id: rowLayout
  anchors.left: parent.left
  anchors.leftMargin: 0
  anchors.right: parent.right
  anchors.rightMargin: 0
		anchors.top: parent.top
		anchors.bottom: aboutRect.top
  anchors.bottomMargin: 0

  ColumnLayout {
			id: columnLeft
			Layout.fillWidth: false
			Layout.bottomMargin: 100
			Layout.topMargin: 100
			Layout.rightMargin: 20
			Layout.leftMargin: 20
			Layout.fillHeight: false

			Image {
				id: shieldLeft
				x: 0
				y: 0
				Layout.fillWidth: false
				Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
				fillMode: Image.PreserveAspectFit
				source: "Images/shield.svg"
			}
		}

		ColumnLayout {
			id: columnCenter
			height: 800
			Layout.fillHeight: true
			spacing: 5
			Layout.bottomMargin: 100
			Layout.topMargin: 100
			Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

			ColumnLayout {
				id: columnLayout
				width: 100
				height: 100
				Layout.fillHeight: false
				Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

				Image {
					id: helmet1
					x: 0
					y: 0
					Layout.rightMargin: 33
					Layout.maximumWidth: 65535
					Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
					anchors.horizontalCenterOffset: -15
					anchors.horizontalCenter: writing.horizontalCenter
					fillMode: Image.PreserveAspectFit
					source: "Images/templar.svg"
				}

				Image {
					id: writing1
					x: 0
					y: 0
					Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
					fillMode: Image.PreserveAspectFit
					source: "Images/Task Knight logo@2x.png"
				}
			}

			Column {
				id: buttons
				height: 300
				Layout.topMargin: 0
				Layout.fillHeight: false
				Layout.fillWidth: false
				Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

				Rectangle {
					id: signInRect
					width: 238
					height: 101
					color: "#ffffff"
					radius: height * 0.5
					anchors.horizontalCenter: parent.horizontalCenter

					Text {
						id: signInText
						color: "#ff8705"
						text: qsTr("Sign In")
						font.bold: true
						font.family: "Verdana"
						verticalAlignment: Text.AlignVCenter
						horizontalAlignment: Text.AlignHCenter
						anchors.fill: parent
						font.pixelSize: 50

						MouseArea {
							id: signInButton
							anchors.bottomMargin: 6
							anchors.topMargin: 6
							anchors.rightMargin: 10
							anchors.leftMargin: 10
							anchors.fill: parent
						}
					}
				}

				Rectangle {
					id: signUpRect
					width: 238
					height: 101
					color: "#ff8705"
					radius: height * 0.5
					Text {
						id: signUpText
						color: "#ffffff"
						text: qsTr("Sign In")
						anchors.horizontalCenter: parent.horizontalCenter
						anchors.verticalCenter: parent.verticalCenter
						horizontalAlignment: Text.AlignHCenter
						verticalAlignment: Text.AlignVCenter
						font.pixelSize: 50
						font.family: "Verdana"
						font.bold: true

						MouseArea {
							id: signUpButton
							anchors.fill: parent
						}
					}
					anchors.horizontalCenter: parent.horizontalCenter
				}
			}
		}

		ColumnLayout {
			id: columnRight
			width: 100
			height: 100
			Layout.bottomMargin: 100
			Layout.topMargin: 100
			Layout.fillWidth: false
			Layout.rightMargin: 20
			Layout.leftMargin: 20
			Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
			Layout.fillHeight: false

			Image {
				id: shieldRight
				x: 0
				y: 0
				fillMode: Image.PreserveAspectFit
				source: "Images/shield.svg"
			}
		}
	}

	Rectangle {
		id: aboutRect
		color: "#ffffff"
		anchors.right: parent.right
  anchors.rightMargin: 0
		anchors.left: parent.left
		anchors.leftMargin: 0
		anchors.top: parent.top
		anchors.topMargin: 997
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 0

		Text {
			id: aboutText
			color: "#ff8705"
			text: qsTr("What is Task Knight?")
			font.pointSize: 34
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: parent.verticalCenter
			font.family: "Verdana"
			font.bold: true
			verticalAlignment: Text.AlignVCenter
			horizontalAlignment: Text.AlignHCenter

			MouseArea {
				id: aboutButton
				anchors.fill: parent
			}
		}
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:1080;width:1920}D{i:1;anchors_height:200;anchors_width:200}
D{i:8;anchors_x:0;anchors_y:0}D{i:12;anchors_height:100;anchors_width:100}D{i:10;anchors_height:200;anchors_width:200}
D{i:15;anchors_height:100;anchors_width:100}D{i:13;anchors_height:200;anchors_width:200}
D{i:2;anchors_height:100;anchors_width:1920;anchors_x:0;anchors_y:0}D{i:20;anchors_height:100;anchors_width:100}
D{i:18;anchors_height:83}
}
##^##*/

