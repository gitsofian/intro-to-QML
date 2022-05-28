import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Datatypes Demo")

    property string mString: "Hello World!"
    property int mInt: 48
    property bool isFemale: false
    property double mDouble: 12.1223

    Rectangle {
        width: 200
        height: 100 + mInt

        anchors.centerIn: parent
        color: "yellow"

        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
            font.bold: isFemale?false:true
        }
    }

    Component.onCompleted: {
        //console.log("The value of the property mString is :" + mString)
        print("The value of the property mString is :"+ mString)
        console.log("The value of the property mInt ist :"+ mInt)

        if (isFemale){
            console.log("You may wear a dress!")
        }else {
            console.log("You may wear a suit")
        }

        console.log("The value of mDouble is :"+ mDouble)
    }
}
