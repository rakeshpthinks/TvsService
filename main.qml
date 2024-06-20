import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.3

Window {
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Tvs Service")
    color: "white"


    // MyApplication{
    //     anchors.fill: parent

    // }
    Component.onCompleted: {
        console.log(Screen.width ,+" "+ Screen.height)
    }

    SignalWindow{

    }
}
