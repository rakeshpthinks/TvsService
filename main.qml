import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.3

Window {
    width: Screen.width
    height: Screen.height
    visible: true
    title: qsTr("Tvs Service")
    color: "white"


    Rectangle {
        id: menuButtonsId
        width: 0.2 * parent.width
        height: parent.height
        // border.color: "black"

        Rectangle{
            // border.color: "red"
            height: parent.height
            width: parent.width/1.5
            anchors.horizontalCenter: parent.horizontalCenter

            ColumnLayout {
                id: columnLayout
                anchors.fill: parent
                spacing: 10
                ButtonCustome {
                    text: "Engine"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    onButtonClicked: {
                        loader.source = "Engine.qml"
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "TellTale"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    onButtonClicked: {
                        loader.source = "TellTale.qml"
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Media"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    onButtonClicked: {
                        loader.source = "Media.qml"
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Phone"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Connectivity"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Wheels"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Wheels"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
                    onButtonClicked: {
                        updateButtonSelection(this)
                    }
                }
                ButtonCustome {
                    text: "Brake"
                    topButtonColor: "#6f7070"
                    bottomButtonColor: "#252626"
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
