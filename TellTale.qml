import QtQuick 2.14
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15

Item {
    // width: 800
    // height: 600
    anchors.left: parent.left
    anchors.leftMargin: 40
    function backLightNotWorking() {
        console.log("backLightNotWorking button clicked")
    }

    function frontLightNotWorking() {
        console.log("frontLightNotWorking button clicked")
    }

    function lowOilPressure() {
        console.log("lowOilPressure button Clicked")
    }

    function oilPressureChanged(value) {
        console.log("oilPressureChanged button Clicked and value is " + value)
    }

    function batteryWarning() {
        console.log("batteryWarning button Clicked")
    }

    function batteryOn() {
        console.log("batteryOn button Clicked")
    }

    function engineTempHigh(value) {
        console.log("engineTempHigh button Clicked and value is " + value)
    }

    function engineTempChanged(value) {
        console.log("engineTempChanged button Clicked and value is " + value)
    }

    function engineCheckRequired() {
        console.log("engineCheckRequired button Clicked")
    }

    function absWarning() {
        console.log("absWarning button Clicked")
    }

    function switchOnNeutralLight() {
        console.log("switchOnNeutralLight button Clicked")
    }

    function lowFuelWarningLight(value) {
        console.log("lowFuelWarningLight button Clicked and value is " + value)
    }

    function fuelQtyChanged(value) {
        console.log("fuelQtyChanged button Clicked and value is " + value)
    }

    function tractionControlLightOn() {
        console.log("tractionControlLightOn button Clicked")
    }

    function tractionControlLightOff() {
        console.log("tractionControlLightOff button Clicked")
    }

    function adjustGridSize() {
        var aspectRatio = width / height
        if (aspectRatio > 1.5) {
            _gridLayouts.columns = 3
            _gridLayouts.rows = 4
        } else if (aspectRatio > 1.3) {
            _gridLayouts.columns = 3
            _gridLayouts.rows = 4
        } else {
            _gridLayouts.columns = 2
            _gridLayouts.rows = 4
        }
        console.log(aspectRatio +"Adjusted grid to " + _gridLayouts.columns + " columns and " + _gridLayouts.rows + " rows")
    }

    onWidthChanged: adjustGridSize()
    onHeightChanged: adjustGridSize()

    GridLayout {
        id: _gridLayouts
        anchors.fill: parent
        // Layout.fillWidth: true
        // Layout.fillHeight: true
        // columns: 4
        // rows: 3

        SignalComponent {
            id: _backLightNotWorking
            text: "BacklightNotWorking"
            onSignalEmitted: backLightNotWorking()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19

            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _frontLightNotWorking
            text: "frontLightNotWorking"
            onSignalEmitted: frontLightNotWorking()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }
        SignalComponent {
            id: _oilPressureChangedButtonId
            text: "oilPressureChanged"
            onSignalEmitted: oilPressureChanged(_oilPressureChangedButtonId.userInput)
            isInputRequired: true
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _lowOilPressure
            text: "lowOilPressure"
            onSignalEmitted: lowOilPressure()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _batteryWarning
            text: "batteryWarning"
            onSignalEmitted: batteryWarning()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }
        SignalComponent {
            id: _engineTempHighButtonId
            text: "engineTempHighButton"
            onSignalEmitted: engineTempHigh(_engineTempHighButtonId.userInput)
            isInputRequired: true
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _batteryOn
            text: "batteryOn"
            onSignalEmitted: batteryOn()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _engineCheckRequired
            text: "engineCheckRequired"
            onSignalEmitted: engineCheckRequired()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _engineTempChangedButtonId
            text: "engineTempChanged"
            onSignalEmitted: engineTempChanged(_engineTempChangedButtonId.userInput)
            isInputRequired: true
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _absWarning
            text: "absWarning"
            onSignalEmitted: absWarning()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _switchOnNeutralLight
            text: "switchOnNeutralLight"
            onSignalEmitted: switchOnNeutralLight()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _lowFuelWarningLight
            text: "lowFuelWarningLight"
            onSignalEmitted: lowFuelWarningLight(_lowFuelWarningLight.userInput)
            isInputRequired: true
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _tractionControlLightOff
            text: "tractionControlLightOff"
            onSignalEmitted: tractionControlLightOff()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }

        SignalComponent {
            id: _tractionControlLightOn
            text: "tractionControlLightOn"
            onSignalEmitted: tractionControlLightOn()
            isInputRequired: false
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }


        SignalComponent {
            id: _fuelQtyChangedButtonId
            text: "fuelQtyChangedButton"
            onSignalEmitted: fuelQtyChanged(_fuelQtyChangedButtonId.userInput)
            isInputRequired: true
            implicitWidth:  parent.width * 0.19
            implicitHeight: parent.height * 0.1
        }
    }
}
