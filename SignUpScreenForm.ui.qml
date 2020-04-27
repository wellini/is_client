import QtQuick 2.14
import QtQuick.Layouts 1.14

Item {
	id: signUpScreen
	property alias createButton: createButton
	property alias fullNameTextEdit: fullNameTextEdit
	property alias emailTextEdit: emailTextEdit
	property alias passwordTextEdit: passwordTextEdit
	property alias mouseArea: mouseArea

	Rectangle {
		id: background
		color: "#ff8705"
		anchors.fill: parent

		MouseArea {
			id: mouseArea
			anchors.fill: parent
		}

		ColumnLayout {
			id: topLevelColumnLayout
			anchors.fill: parent

			ColumnLayout {
				id: upperHeader
				Layout.fillHeight: true
				Layout.fillWidth: true
				Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
				spacing: 0

				Text {
					id: upperText
					color: "#ffffff"
					text: qsTr("Create a new account")
					Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
					Layout.fillWidth: true
					fontSizeMode: Text.Fit
					font.pointSize: 75
					font.bold: true
					font.family: "Verdana"
					verticalAlignment: Text.AlignVCenter
					horizontalAlignment: Text.AlignHCenter
				}

				Text {
					id: lowerText
					color: "#fde0a0"
					text: qsTr("It's quick and easy")
					Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
					Layout.fillWidth: true
					fontSizeMode: Text.Fit
					font.pointSize: 35
					font.bold: true
					font.family: "Verdana"
					verticalAlignment: Text.AlignVCenter
					horizontalAlignment: Text.AlignHCenter
				}
			}

			RowLayout {
				id: bottomRowLayout
				Layout.fillHeight: true
				Layout.rightMargin: background.width / 1080 * 100
				Layout.leftMargin: background.width / 1080 * 100
				Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
				Layout.fillWidth: true

				ColumnLayout {
					id: signUpForm
					width: 100
					height: 100
					scale: 1
					Layout.fillWidth: true
					Layout.fillHeight: true

					Text {
						id: fullNameText
						color: "#ffffff"
						text: qsTr("Full name")
						fontSizeMode: Text.Fit
						font.bold: true
						font.family: "Verdana"
						Layout.alignment: Qt.AlignLeft | Qt.AlignTop
						font.pixelSize: 50
					}

					Rectangle {
						id: fullNameRect
						width: 406
						height: 72
						color: "#ffffff"
						radius: height / 2
						Layout.alignment: Qt.AlignLeft | Qt.AlignTop

						TextEdit {
							id: fullNameTextEdit
							text: qsTr("Text Edit")
							anchors.fill: parent
							font.pixelSize: 50
						}
					}

					Text {
						id: emailText
						color: "#ffffff"
						text: qsTr("E-Mail")
						font.family: "Verdana"
						font.bold: true
						fontSizeMode: Text.Fit
						font.pixelSize: 50
					}

					Rectangle {
						id: emailRect
						width: 406
						height: 72
						color: "#ffffff"
						radius: height / 2

						TextEdit {
							id: emailTextEdit
							text: qsTr("Text Edit")
							font.pixelSize: 50
							anchors.fill: parent
						}
					}

					Text {
						id: passwordText
						color: "#ffffff"
						text: qsTr("Password")
						Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
						font.family: "Verdana"
						font.bold: true
						fontSizeMode: Text.Fit
						font.pixelSize: 50
					}

					Rectangle {
						id: passwordRect
						width: 406
						height: 72
						color: "#ffffff"
						radius: height / 2
						Layout.alignment: Qt.AlignLeft | Qt.AlignBottom

						TextEdit {
							id: passwordTextEdit
							text: qsTr("Text Edit")
							font.pixelSize: 50
							anchors.fill: parent
						}
					}

					ButtonRect {
						id: createButton
						text: "Create"
						Layout.topMargin: 50
						Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
					}
				}

				Image {
					id: image
					Layout.maximumHeight: background.height / 1080 * 450
					Layout.fillHeight: true
					sourceSize.width: width
					sourceSize.height: height
					Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
					layer.smooth: false
					antialiasing: true
					layer.mipmap: true
					Layout.fillWidth: true
					fillMode: Image.PreserveAspectFit
					source: "Images/templar.svg"
				}
			}
		}
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:1080;width:1920}D{i:2;anchors_height:100;anchors_width:100}
D{i:11;anchors_height:20;anchors_width:80}D{i:14;anchors_height:20;anchors_width:80}
D{i:17;anchors_height:20;anchors_width:80}D{i:3;anchors_height:100;anchors_width:100}
}
##^##*/

