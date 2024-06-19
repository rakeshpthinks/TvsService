import QtQuick 2.14
import QtQuick.Layouts 1.3
Rectangle {
    Rectangle {
        id: menuButtonsId
        width: 0.2 * parent.width
        height: parent.height

        Rectangle{
            // border.color: "red"
            id : _leftSide
            height: parent.height
            width: parent.width/1.5
            anchors.horizontalCenter: parent.horizontalCenter

            ColumnLayout {
                id: columnLayout
                anchors.fill: parent
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: 10
                ButtonCustome {
                    text: "Engine"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01

                    onButtonClicked: {
                        loader.source = "Engine.qml"
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "TellTale"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01
                    onButtonClicked: {
                        loader.source = "TellTale.qml"
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Media"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01

                    onButtonClicked: {
                        loader.source = "Media.qml"
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Phone"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01

                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Connectivity"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01
                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Wheels"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01

                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Wheels"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01

                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Brake"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    implicitHeight: _leftSide.height * 0.09
                    implicitWidth: _leftSide.width * 0.9
                    textSize: (  _leftSide.height+_leftSide.width) * 0.01
                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
            }
        }
    }

    Rectangle {
        id: contentArea
        anchors.left: menuButtonsId.right
        width: 0.8 * parent.width
        height: parent.height
        border.color: "black"
        border.width: 2
        Loader {
            id: loader
            anchors.fill: parent
        }
    }

    function updateButtonSelection(selectedButton) {
        for (let i = 0; i < columnLayout.children.length; i++) {
            let child = columnLayout.children[i];
            if (child instanceof ButtonCustome) {
                child.isSelected = (child === selectedButton);
            }
        }
    }
}

