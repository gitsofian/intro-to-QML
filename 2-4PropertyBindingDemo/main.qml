import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Property Binding Demo")


    Rectangle {
        id: redRectId
        width: 50
        height: width * 2
        color: "red"
    }

    Rectangle {
        id: blueRectId
        color: "blue"
        width: 100
        height: 100
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.width = redRectId.width + 10
            }
        }
    }

    Rectangle {
        id: greenRectId
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right
        MouseArea {
            anchors.fill: parent
            onClicked: {
                redRectId.height  = Qt.binding(()=>{
                    return redRectId.width * 2      // calling global binding function
                })

            }
        }
    }
}
