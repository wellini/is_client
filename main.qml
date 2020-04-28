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
				mouseArea.onClicked: {
					swipeView.setCurrentIndex(0)
					destructionTimer.start()
				}

				// Login proccess
				signInButton.mouseArea.onClicked: {
					Network.postLogin(email, password)
				}
			}
		}

		// Sign Up screen (registration)
		Component {
			id: signUp
			SignUpScreen {
				mouseArea.onClicked: {
					swipeView.setCurrentIndex(0)
					destructionTimer.start()
				}
			}
		}

		// "What is task knight?" screen
		Component {
			id: about
			AboutScreen {
				mouseArea.onClicked: {
					swipeView.setCurrentIndex(0)
					destructionTimer.start()
				}
			}
		}

		Keys.onEscapePressed: {
			Qt.quit()
		}

		// Networking functions
		function postLogin(login, password) {
			// email validity check
			if (!emailIsValid(login)) {
				console.log("Invalid email!")
				/* TODO
				  alert the user to the invalidity of the email
				*/
				return
			}

			// if email is correct:
			let response

		}

		function emailIsValid(email) {
			return (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
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

		onTriggered: {
			swipeView.removeItem(swipeView.itemAt(1));
		}
	}
}
