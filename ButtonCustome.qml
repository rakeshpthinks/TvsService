import QtQuick 2.14

Rectangle {
    id: customeButton

    property alias text: textId.text
    property string topButtonColor :""
    property string bottomButtonColor: ""
    property alias textSize: textId.font.pixelSize
    // property alias color: customeButton.color
    signal buttonClicked()
    // anchors.horizontalCenter: parent.horizontalCenter

    width: 250
    height: 100
    radius: 10

    property bool isSelected: false  // New property to track selection state

    gradient: Gradient {
        GradientStop { position: 0.0; color: isSelected ? "#99f09b" : topButtonColor }
        GradientStop { position: 1.0; color: isSelected ? "#07de0a" : bottomButtonColor }
    }

    Text {
        id: textId
        // anchors.centerIn: parent
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        // width: customeButton.width
        anchors.margins: 5
        color: isSelected ?"black":"white"
        font.family: "Montserrat"
        Component.onCompleted: {
            console.log(textId.width)
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            buttonClicked()
        }
        onPressed: {
            customeButton.scale = 0.96
        }
        onReleased: {
            customeButton.scale = 1
        }
    }
}
