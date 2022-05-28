import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World, Hallo Welt! QML Synthax Demo")

    property string name: "Hallo Quick and QML"

    Row {
        id: row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: redRectId
            width: 150; height: 150;
            color: "red"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the Red Rectangle!")
                    name = "red"
                }
            }
        }
        Rectangle {
            id: greenRectId
            width: 150; height: 150;
            color: "green"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the Green Rectangle!")
                    name = "green"
                }
            }
        }
        Rectangle {
            id: blueRectId
            width: 150; height: 150;
            color: "blue"
            radius: 20
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the Blue Rectangle!")
                    name = "blue"
                }
            }
        }
        Rectangle {
            id: textRectId
            width: 150; height: 150;
            color: "dodgerblue"
            radius: 100
            Text {
                id: textId
                anchors.centerIn: parent
                text: name
                color: "white"
                font.pointSize: 10
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the Green Rectangle!")
                    textId.text = "Binding Property is broken!!!"
                    /* set the text property of the componebt textId to the default value to break the binding*/
                }
            }
        }

    }
}
