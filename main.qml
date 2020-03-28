import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

Window {
	id: window
	visible: true
    width: 1280
    height: 720
//	visibility: "Maximized"

	title: qsTr("Hello World")

	SwipeView {
		id: swipeView
		visible: true
		interactive: true
		anchors.fill: parent
		currentIndex: 0

        StartScreenForm {
			signInButton {
				onClicked: {
					swipeView.addItem(signIn.createObject(swipeView))
					swipeView.incrementCurrentIndex()
				}
			}
		}

		Component {
			id: signIn
			SignInScreen {
				mouseArea {
					onClicked: {
						swipeView.decrementCurrentIndex()
						destructionTimer.start()
					}
				}
			}
		}
	}

	Timer {
		id: destructionTimer
		interval: 300
		repeat: false
		triggeredOnStart: false

		onTriggered: {
			swipeView.removeItem(swipeView.childAt(1))
		}
	}
}
