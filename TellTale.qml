import QtQuick 2.14
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.15

Item {
    anchors.left: parent.left
    anchors.leftMargin: 20
    // anchors.top: parent.top
    // anchors.topMargin: 20

    function backLightNotWorking() {
        console.log("backLightNotWorking button clicked")
    }

    function frontLightNotWorking() {
        console.log("frontLightNotWorking button cliked")
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
        console.log("engineTempHigh button Clicked and value is "+ value)
    }

    function engineTempChanged(value) {
        console.log("engineTempChanged button Clicked and value is "+ value)
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
        console.log("lowFuelWarningLight button Clicked and value is "+ value)
    }

    function fuelQtyChanged(value) {
        console.log("fuelQtyChanged button Clicked and value is "+ value)
    }

    function tractionControlLightOn() {
        console.log("tractionControlLightOn button Clicked")
    }

    function tractionControlLightOff() {
        console.log("tractionControlLightOff button Clicked")
    }
    GridLayout{
        columns: 3
        rows: 4
        anchors.fill: parent
        SignalComponent{
            id: _backLightNotWorking
            text: "BacklightNotWorking"
            onSignalEmitted:  backLightNotWorking();
            isInputRequired: false
        }

        SignalComponent{
            id: _frontLightNotWorking
            text: "frontLightNotWorking"
            onSignalEmitted:  frontLightNotWorking();
            isInputRequired: false
        }

        SignalComponent{
            id: _lowOilPressure
            text: "lowOilPressure"
            onSignalEmitted:  lowOilPressure();
            isInputRequired: false
        }

        SignalComponent{
            id: _batteryWarning
            text: "batteryWarning"
            onSignalEmitted:  batteryWarning()
            isInputRequired: false
        }
        SignalComponent{
            id: _batteryOn
            text: "batteryOn"
            onSignalEmitted:  batteryOn();
            isInputRequired: false
        }
        SignalComponent{
            id: _engineCheckRequired
            text: "engineCheckRequired"
            onSignalEmitted:  engineCheckRequired();
            isInputRequired: false
        }
        SignalComponent{
            id: _absWarning
            text: "absWarning"
            onSignalEmitted:  absWarning();
            isInputRequired: false
        }
        SignalComponent{
            id: _switchOnNeutralLight
            text: "switchOnNeutralLight"
            onSignalEmitted:  switchOnNeutralLight();
            isInputRequired: false
        }

        SignalComponent{
            id: _tractionControlLightOff
            text: "tractionControlLightOff"
            onSignalEmitted:  tractionControlLightOff();
            isInputRequired: false
        }

        SignalComponent{
            id: _tractionControlLightOn
            text: "tractionControlLightOn"
            onSignalEmitted:  tractionControlLightOn()
            isInputRequired: false
        }

        SignalComponent{
            id: _oilPressureChangedButtonId
            text: "oilPressureChangedButton"
            onSignalEmitted:  oilPressureChanged(_oilPressureChangedButtonId.userInput)
            isInputRequired: true
        }
        SignalComponent{
            id: _engineTempHighButtonId
            text: "engineTempHighButton"
            onSignalEmitted:  engineTempHigh(_engineTempHighButtonId.userInput)
            isInputRequired: true
        }
        SignalComponent{
            id: _engineTempChangedButtonId
            text: "engineTempHighButton"
            onSignalEmitted:  engineTempChanged(_engineTempChangedButtonId.userInput)
            isInputRequired: true
        }
        SignalComponent{
            id: _lowFuelWarningLight
            text: "lowFuelWarningLight"
            onSignalEmitted:  lowFuelWarningLight(_lowFuelWarningLight.userInput)
            isInputRequired: true
        }
        SignalComponent{
            id: _fuelQtyChangedButtonId
            text: "fuelQtyChangedButtonId"
            onSignalEmitted:  fuelQtyChanged(_fuelQtyChangedButtonId.userInput)
            isInputRequired: true
        }
    }
}
