import QtQuick 2.14
import QtQuick.Layouts 1.14

// This screen uses scaling instead of layouts
// Column "column" contains UI and is getting scaled
Item {
	id: signInScreen

	property string orangeColorRGB: "#ff8705"
	property int rectNativeWidth: 743
	property int rectNativeHeight: 101
	property int rectNativeTextSizePixels: 50

	property alias background: background
	property alias mouseArea: mouseArea
	property alias forgotPasswordButton: forgotPasswordButton
	property alias signInButton: signInButton
	property alias email: emailRect.text
	property alias password: passwordRect.text

	Rectangle {
		id: background
		color: orangeColorRGB
		anchors.fill: parent

		MouseArea {
			id: mouseArea
			anchors.fill: parent
		}

		Column {
			id: column
			scale: (background.width / 1920 + background.height / 1080) / 2
			spacing: 20
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: parent.verticalCenter

			Text {
				id: emailText
				color: "#ffffff"
				text: qsTr("E-Mail")
				leftPadding: 20
				font.bold: true
				font.family: "Verdana"
				font.pixelSize: 50
			}

			TextInputRect {
				id: emailRect
				text: "johndoe@email.com"
				isPassword: false
			}

			Text {
				id: passwordText
				color: "#ffffff"
				text: qsTr("Password")
				leftPadding: 20
				font.bold: true
				font.family: "Verdana"
				font.pixelSize: 50
			}

			TextInputRect {
				id: passwordRect
				isPassword: true
			}

			Text {
				id: forgotPasswordText
				color: "#fde0a0"
				text: qsTr("Forgot password?")
				anchors.horizontalCenter: parent.horizontalCenter
				leftPadding: 20
				font.family: "Verdana"
				font.pixelSize: 30

				MouseArea {
					id: forgotPasswordButton
					anchors.fill: parent
					cursorShape: Qt.PointingHandCursor
				}
			}

			ButtonRect {
				id: signInButton
				text: "Sign In"
				anchors.horizontalCenter: parent.horizontalCenter
			}
		}
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:1080;width:1920}
}
##^##*/

