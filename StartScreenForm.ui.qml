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
        spacing: 0
        scale: 1
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: aboutRect.top
        anchors.bottomMargin: 0

        ColumnLayout {
            id: columnLeft
            Layout.fillWidth: true
            Layout.bottomMargin: 100
            Layout.topMargin: 100
            Layout.rightMargin: 20
            Layout.leftMargin: 20
            Layout.fillHeight: true

            Image {
                id: shieldLeft
                x: 0
                y: 0
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                fillMode: Image.PreserveAspectFit
                source: "Images/shield.svg"
            }
        }

        ColumnLayout {
            id: columnCenter
            height: 800
            Layout.fillWidth: true
            Layout.fillHeight: true
            spacing: 5
            Layout.bottomMargin: 100
            Layout.topMargin: 100
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            ColumnLayout {
                id: header
                width: 100
                height: helmet.height + writing.height
                Layout.fillWidth: true
                spacing: 0
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

                Image {
                    id: helmet
                    x: 0
                    y: 0
                    Layout.fillHeight: true
                    scale: 1
                    Layout.fillWidth: true
                    Layout.rightMargin: 33
                    Layout.maximumWidth: 65535
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    anchors.horizontalCenterOffset: -15
                    fillMode: Image.PreserveAspectFit
                    source: "Images/templar.svg"
                }

                Image {
                    id: writing
                    x: 0
                    y: 0
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    fillMode: Image.PreserveAspectFit
                    source: "Images/Task Knight logo@2x.png"
                }
            }

            Column {
                id: buttons
                height: 300
                scale: 1 * (startScreen.width / 1920 + startScreen.height / 1080) / 2
                Layout.fillHeight: true
                Layout.fillWidth: true
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
                        font.pointSize: 38
                        font.bold: true
                        font.family: "Verdana"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.fill: parent

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
                        text: qsTr("Sign Up")
                        font.pointSize: 38
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
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
            Layout.bottomMargin: 100
            Layout.topMargin: 100
            Layout.fillWidth: true
            Layout.rightMargin: 20
            Layout.leftMargin: 20
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.fillHeight: true

            Image {
                id: shieldRight
                x: 0
                y: 0
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.fillHeight: true
                Layout.fillWidth: true
                fillMode: Image.PreserveAspectFit
                source: "Images/shield.svg"
            }
        }
    }

    Rectangle {
        id: aboutRect
        height: 83 * startScreen.height / 1080
        color: "#ffffff"
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: aboutText
            color: "#ff8705"
            text: qsTr("What is Task Knight?")
            font.pixelSize: 34 * aboutRect.height / 83
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
D{i:20;anchors_height:100;anchors_width:100}D{i:18;anchors_height:83}
}
##^##*/

