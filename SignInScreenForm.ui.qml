import QtQuick 2.14
import QtQuick.Layouts 1.14

Item {
	id: signInScreen

	property string orangeColorRGB: "#ff8705"
	property int rectNativeWidth: 743
	property int rectNativeHeight: 101
	property int rectNativeTextSizePixels: 50

	property alias background: background
	property alias mouseArea: mouseArea
	property alias emailTextEdit: emailTextEdit
	property alias passwordTextEdit: passwordTextEdit
	property alias forgotPasswordButton: forgotPasswordButton
	property alias signInButton: signInButton

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
			spacing: 20
			scale: (signInScreen.width / 1920 + signInScreen.height / 1080) / 2
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

			Rectangle {
				id: emailRect
				width: signInScreen.width / 1920 * rectNativeWidth
				height: signInScreen.height / 1080 * rectNativeHeight
				color: "#ffffff"
				radius: height / 2

				TextInput {
					id: emailTextEdit
					text: "johndoe@email.provider"
					selectionColor: color
					selectByMouse: true
					cursorVisible: true
					verticalAlignment: Text.AlignVCenter
					color: orangeColorRGB
					font.family: "Verdana"
					anchors.fill: parent
					anchors.leftMargin: 10
					anchors.rightMargin: 10
					font.pixelSize: rectNativeTextSizePixels * (emailRect.width / rectNativeWidth)
				}
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

			Rectangle {
				id: passwordRect
				width: signInScreen.width / 1920 * rectNativeWidth
				height: signInScreen.height / 1080 * rectNativeHeight
				color: "#ffffff"
				radius: height / 2

				TextInput {
					id: passwordTextEdit
					text: "123456"
					echoMode: TextInput.Password
					font.family: "Verdana"
					cursorVisible: true
					selectByMouse: true
					selectionColor: color
					verticalAlignment: Text.AlignVCenter
					color: orangeColorRGB
					anchors.fill: parent
					anchors.leftMargin: 10
					anchors.rightMargin: 10
					font.pixelSize: rectNativeTextSizePixels
									* (emailRect.width / rectNativeWidth) / 1.3
				}
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
	D{i:0;autoSize:true;height:1080;width:1920}D{i:11;anchors_height:100;anchors_width:100}
}
##^##*/

