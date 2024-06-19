import QtQuick 2.14
import QtQuick.Layouts 1.3

Rectangle {
    anchors.top:parent.top
    anchors.topMargin: 20
    RowLayout{
        spacing: 20

        BacklightNotWorking{
            width: 200
            height: 200
            isBacklightNotWorking : false
        }
        Rectangle {
            id: _frontLightNotWorking

            property bool isfrontLightNotWorking: true

            width: 200
            height: 200
            border.color: "black"
            Rectangle{
                id: _light
                width: parent.width * 0.5
                height: parent.height * 0.5
                radius: 50
                anchors.centerIn: parent
                color: _frontLightNotWorking.isfrontLightNotWorking ? "red" : "grey"

            }
            Text {
                id: name
                text: qsTr("frontLightNotWorking")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 2
                font.family: "Montserrat"
            }
        }
        CustomeWarnings{
            id : _lowOilPressure
            text: "lowOilPressure"
            isTrue: false
            imageSource : "qrc:/images/lowoilpressure.png"
            imgHeight: 120
            imgWidth: 120
        }


        CustomeWarnings{
            id : _batteryWarningSignal
            text: "isBatteryLow"
            isTrue: false
            imageSource : "qrc:/images/batteryWarning.png"
            imgHeight: 120
            imgWidth: 120
        }

        CustomeWarnings{
            id : _batteryOnID
            text: "isBatteryOn"
            isTrue: false
            imageSource : "qrc:/images/batteryOn.png"
        }

        CustomeWarnings{
            id : _engineCheckRequiredID
            text: "engineCheckRequired"
            isTrue: false
            imageSource : "qrc:/images/engineCheckRequired.png"
            imgHeight: 100
        }
        CustomeWarnings{
            id : _absWarning
            text: "absWarning"
            isTrue: false
            imageSource : "qrc:/images/absWarning.png"
            imgHeight: 80
            imgWidth: 100
        }

    }





}
