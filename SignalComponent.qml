import QtQuick 2.14
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.5
Rectangle {
    id: signalCompoId

    property alias text: signalButtonId.text
    property bool isInputRequired: false
    property int userInput: _userInputID.value
    signal signalEmitted()

    width: isInputRequired ? 360 : 250

    ButtonCustome {
        id: signalButtonId
        width:isInputRequired ? parent.width * 0.70 : parent.width
        height: 80
        anchors.verticalCenter: parent.verticalCenter
        onButtonClicked: signalEmitted()
        topButtonColor: "#6f7070"
        bottomButtonColor: "#252626"
    }
    Rectangle {
        height: 70

        width: signalCompoId.width * 0.35
        radius: 8
        anchors.left: signalButtonId.right
        anchors.leftMargin: 5
        anchors.verticalCenter: parent.verticalCenter
        visible: isInputRequired
        SpinBox{
            id : _userInputID
            height: 70

            editable: true
            Layout.fillWidth: true
        }
    }
}
