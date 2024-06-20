import QtQuick 2.14

Rectangle {
    property bool isTrue: false
    // border.color: "black"
    Rectangle{
        id: _light
        width: parent.width * 0.5
        height: parent.height * 0.5
        radius: 50
        anchors.centerIn: parent
        color: isTrue ? "red" : "grey"
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
