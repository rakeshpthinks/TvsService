import QtQuick 2.14
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.5

Rectangle {
    id: signalCompoId

    property alias text: signalButtonId.text
    property bool isInputRequired: false
    property real userInput: _userInputID.value
    signal signalEmitted()

    width: isInputRequired ? 320 : 250
    height: 60
    ButtonCustome {
        id: signalButtonId
        width: isInputRequired ? parent.width * 0.70 : parent.width
        height: 80
        anchors.verticalCenter: parent.verticalCenter
        onButtonClicked: signalEmitted()
        topButtonColor: "#6f7070"
        textSize : (signalButtonId.width+signalButtonId.height) * 0.05
        bottomButtonColor: "#252626"
    }

    Rectangle {
        height: 70
        width: signalCompoId.width * 0.4
        radius: 8
        anchors.left: signalButtonId.right
        anchors.leftMargin: 5
        anchors.verticalCenter: parent.verticalCenter
        visible: isInputRequired

        CustomDoubleSpinBox {
            id: _userInputID
            height: 70
            width: parent.width
            minimum: 0.0
            maximum: 9999.0
            stepSize: 0.1
        }
    }
}
