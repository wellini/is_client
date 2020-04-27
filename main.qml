import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

import "network.js" as Network

Window {
	id: window
	visible: true
	width: 1920
	height: 1080
	minimumWidth: 1280
	minimumHeight: 720
	//	visibility: "Maximized"
	title: qsTr("Task Knight")

	SwipeView {
		id: swipeView
		visible: true
		interactive: false
		anchors.fill: parent
		currentIndex: 0

		// Starting screen
		StartScreen {
			// Sign in button (login)
			signInButton {
				mouseArea {
					onClicked: {
						swipeView.addItem(signIn.createObject(swipeView))
						swipeView.incrementCurrentIndex()
					}
				}
			}

			// Sign up button (registration)
			signUpButton {
				mouseArea {
					onClicked: {
						swipeView.addItem(signUp.createObject(swipeView))
						swipeView.incrementCurrentIndex()
					}
				}
				rectBorderColor: "#ff8705"
			}

			// "What is task knight?" button
			//  It's not a ButtonRect, it's a MouseArea
			aboutButton.onClicked:  {
				swipeView.addItem(about.createObject(swipeView))
				swipeView.incrementCurrentIndex()
			}
		}

		Component {
			id: signIn
			SignInScreen {
				mouseArea.onClicked: {
					swipeView.setCurrentIndex(0)
					destructionTimer.start()
				}
			}
		}

		Component {
			id: signUp
			SignUpScreen {
				mouseArea.onClicked: {
					swipeView.setCurrentIndex(0)
					destructionTimer.start()
				}
			}
		}

		Component {
			id: about
			AboutScreen {
				mouseArea.onClicked: {
					swipeView.setCurrentIndex(0)
					destructionTimer.start()
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
			swipeView.removeItem(swipeView.itemAt(1));
		}
	}
}
