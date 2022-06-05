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
    property url mUrl: "Hello World!"

    // var as Datatypes
    property var aNumber: 100
    property var aBool: false
    property var aString: "Hallo Welt!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.1)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function(){return "six";})]
    property var anObject: {"foo": 10, "bar":20}
    property var aFunction: (function(){return "one";})



    Rectangle {
        width: 200
        height: 100 + mInt

        anchors.centerIn: parent
        color: aColor

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

        console.log("The value fo the property mUrl is: "+mUrl)

        console.log("compare two variables with === triple egal sign")
        if (mString === mUrl) // === sign check for value and datatype
        {
            console.log("Values and the datytypes of mString and mUrl ars the same!")
        }else
        {
            console.log("Values and datatypes of mString and mUrl ars not the same!!")
        }

        console.log("compare two variables with == double egal sign")
        if (mString == mUrl) // == sign check for only the value
        {
            console.log("Values of mString and mUrl are the same!")
        }else
        {
            console.log("Values of mString and mUrl ars not the same!!")
        }

        // playing with var datatypes
        console.log("-------------------------Playing with var Datatypes----------------------------")
        console.log("The value of aNumber is: "+ aNumber)
        console.log("The value of aBool is: "+ aBool)
        console.log("The value of aString is: "+ aString)
        console.log("The value of anotherString is: "+ anotherString)

        console.log("The component of the aRect are : x:"+ aRect.x
                                                  + " y:" + aRect.y
                                                  + " width:" + aRect.width
                                                  + " height:" + aRect.height)

        console.log("The length of the array "+ anArray.length)

        anArray.forEach((value, index)=>{
                            if (index === 5)
                            {
                                console.log(value(), index)
                            }else
                            {
                                console.log(value, index)
                            }
                        })




    }
}
