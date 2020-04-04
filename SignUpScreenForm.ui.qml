import QtQuick 2.14
import QtQuick.Layouts 1.14

Item {
	id: signUpScreen
	anchors.fill: parent

	Rectangle {
		id: background
		color: "#ff8705"
		anchors.rightMargin: 0
		anchors.bottomMargin: 0
		anchors.leftMargin: 0
		anchors.topMargin: 0
		anchors.fill: parent
	}

	ColumnLayout {
		id: header
		spacing: 0
		anchors.left: parent.left
		anchors.right: parent.right

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
		id: mainRow
		anchors.rightMargin: 0
		anchors.bottomMargin: 0
		anchors.leftMargin: 0
		anchors.topMargin: 0
		anchors.top: header.bottom
		anchors.left: parent.left
		anchors.right: parent.right
		anchors.bottom: parent.bottom

		ColumnLayout {
			id: signUpForm
			width: 100
			height: 100
			Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
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
			layer.samples: 8
			layer.smooth: true
			antialiasing: true
			layer.mipmap: true
			Layout.maximumWidth: 810
			Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
			Layout.fillWidth: true
			Layout.fillHeight: true
			fillMode: Image.PreserveAspectFit
			source: "Images/templar.svg"
		}
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:1080;width:1920}
}
##^##*/

