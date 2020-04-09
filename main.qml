import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

import "network.js" as Network

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
		interactive: false
		anchors.fill: parent
		currentIndex: 0

		StartScreen {
			signInButton {
                mouseArea {
					onClicked: {
						swipeView.addItem(signIn.createObject(swipeView))
						swipeView.incrementCurrentIndex()
					}
				}
			}

			signUpButton {
                mouseArea {
					onClicked: {
						swipeView.addItem(signUp.createObject(swipeView))
						swipeView.incrementCurrentIndex()
					}
				}
			}
        }

        Component {
            id: signIn
            SignInScreen {
                mouseArea {
                    onClicked: {
                        swipeView.setCurrentIndex(0)
                        destructionTimer.start()
                    }
                }

				signInButton {
                    mouseArea {
						onClicked: {
							var email = emailTextEdit.text
							var password = passwordTextEdit.text

							Network.postLogin(email, password)
						}
					}
				}
            }
        }

		Component {
			id: signUp
			SignUpScreen {
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
