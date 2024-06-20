
import QtQuick 2.0


Rectangle{
    id: batteryComponent
    height: 180
    width: 140
    property int batteryLevel: 89 // Initial battery level
    property color chargeColor: "#ED1A3A"  //DefaultTheme.progressBarColor

    Rectangle {
        id: batteryBorder
        width: parent.width
        height: parent.height
        radius: 10
        Image{
            id:batteryOuter
            height: parent.height
            width: parent.width * 0.8
            source: "qrc:/images/Battery-Outer.png"
            Rectangle {
                id: batteryFill
                width: parent.width * 0.8
                height: (parent.height -20) * batteryLevel / 100
                anchors.horizontalCenter: batteryOuter.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                color: "#ED1A3A"
                radius: 10
                Image {
                    id: chargingIcon
                    source: "qrc:/images/zeon-white-battery.png"
                    visible: batteryLevel > 0 && batteryLevel < 100
                    height: (sourceSize.height * batteryLevel / 100)
                    width: sourceSize.width * batteryLevel / 100
                    anchors.centerIn: parent
                }
                Component.onCompleted: {
                    console.log("Batttery Width: " +width)
                }
            }
            Rectangle {
                id: batteryTop
                width: 36.29
                height: 10.16
                anchors.leftMargin: 100
                anchors.horizontalCenter: batteryOuter.horizontalCenter
                anchors.bottom:  batteryOuter.top
                anchors.bottomMargin: -1
                Image {
                    id: batteryUpper
                    source: "qrc:/images/BatteryUpper.png"
                    width: 36.29
                    height: 10.16
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
    Rectangle{
        width: 83
        height: 47
        anchors.top: batteryBorder.bottom
        color: "transparent"
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: batteryText
            text: batteryLevel + "%"
            font.pixelSize:  38
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "black"
            font.family: "Montserrat"
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}

