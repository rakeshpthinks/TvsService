import QtQuick 2.14

Rectangle {
    id: customeButton

    property alias text: textId.text
    property string topButtonColor :""
    property string bottomButtonColor: ""
    // property alias color: customeButton.color
    signal buttonClicked()
    // anchors.horizontalCenter: parent.horizontalCenter

    width: 250
    height: 100
    radius: 10
    property real originalWidth: width
    property real originalHeight: height
    property bool isSelected: false  // New property to track selection state

    gradient: Gradient {
        GradientStop { position: 0.0; color: isSelected ? "#99f09b" : topButtonColor }//"#c9d7f5"
        GradientStop { position: 1.0; color: isSelected ? "#07de0a" : bottomButtonColor }//"#87a5e8"
    }

    Text {
        id: textId
        anchors.centerIn: parent
        anchors.margins: 5
        color: "white"
        font.family: "Montserrat"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            buttonClicked()
        }
        onPressed: {
            customeButton.scale = 0.95
        }
        onReleased: {
            customeButton.scale = 1
        }
    }
}
