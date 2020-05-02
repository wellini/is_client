import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

import "network.js" as Network

Window {
	id: window
	visible: true
//	width: 1920
//	height: 1080
	minimumWidth: 1280
	minimumHeight: 720
	title: qsTr("Task Knight")

	SwipeView {
		id: swipeView
		focus: true
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

		// Sign In screen (login)
		Component {
			id: signIn
			SignInScreen {
				// Temporary "return" interaction
				mouseArea.onClicked: {
					swipeView.decrementCurrentIndex()
					destructionTimer.queueDestruction(1)
				}

				// Login proccess
				signInButton.mouseArea.onClicked: {
					// Networking
					Network.postLogin(email, password)

					// GUI interaction
					// TODO
				}
			}
		}

		// Sign Up screen (registration)
		Component {
			id: signUp
			SignUpScreen {
				// Temporary "return" interaction
				mouseArea.onClicked: {
					swipeView.decrementCurrentIndex()
					destructionTimer.queueDestruction(1)
				}

				createButton.mouseArea.onClicked: {
					// Networking
					Network.postRegistration(fullName, email, password)

					// GUI interaction
					// Open up the verification code screen
					swipeView.addItem(registrationVerificationCode.createObject(swipeView))
					swipeView.incrementCurrentIndex()
				}
			}
		}

		// "What is task knight?" screen
		Component {
			id: about
			AboutScreen {
				// Temporary "return" interaction
				mouseArea.onClicked: {
					swipeView.decrementCurrentIndex()
					destructionTimer.queueDestruction(1)
				}
			}
		}

		// Registration verification code screen
		Component {
			id: registrationVerificationCode
			VerificationCodeScreen {
				flavourText: "Confirm registration"

				confirmButton.mouseArea.onClicked: {
					// Send confirmation code
					Network.postConfirmRegistration(code)
				}

				// Temporary "return" interaction
				mouseArea.onClicked: {
					swipeView.decrementCurrentIndex()
					destructionTimer.queueDestruction(2)
				}
			}
		}

		Keys.onEscapePressed: {
			Qt.quit()
		}
	}

	// Responsible for
	// removing secondary screens after view is
	// swiped back onto the starting screen
	Timer {
		id: destructionTimer
		interval: 300
		repeat: false
		triggeredOnStart: false

		property int index: 1

		onTriggered: {
			swipeView.removeItem(swipeView.itemAt(index));
		}

		function queueDestruction(num) {
			index = num
			destructionTimer.start()
		}
	}

	function testFunction() {
		console.log("main.qml test function called.")
	}
}

/*##^##
Designer {
	D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
