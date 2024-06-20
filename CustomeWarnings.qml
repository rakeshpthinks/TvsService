import QtQuick 2.14

Rectangle{
    id : _customeWarning

    property bool isTrue: true
    property alias text: _customeWarningTextID.text
    property url imageSource: ""
    property int imgWidth: 150
    property int imgHeight: 200

    width: 200
    height: 200
    // border.color: "black"

    Image {
        id: _imageID

        width: imgWidth
        height: imgHeight
        anchors.centerIn: parent
        source: imageSource
        opacity: _customeWarning.isTrue ? 1 : 0.08
    }
    Text {
        id: _customeWarningTextID
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 2
        font.family: "Montserrat"
    }
}

