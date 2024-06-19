import QtQuick 2.14

Rectangle {
    property bool isBacklightNotWorking: false
    border.color: "black"
    Rectangle{
        id: _light
        width: parent.width * 0.5
        height: parent.height * 0.5
        radius: 50
        anchors.centerIn: parent
        color: isBacklightNotWorking ? "red" : "grey"
    }
    Text {
        id: name
        text: qsTr("backlightNotWorking")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2
        font.family: "Montserrat"
    }
}
