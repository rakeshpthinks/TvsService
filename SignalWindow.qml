import QtQuick 2.14
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    anchors.fill: parent
    width: 800
    height: 600

    property string visibleComponent: ""

    signal changeComponent(string componentId)

    onChangeComponent: {
        visibleComponent = componentId
        console.log("Changing visible component to:", componentId)
        updateComponentVisibility()
    }

    // List of component IDs
    property var componentList: [
        "backlightNotWorking",
        "frontLightNotWorking",
        "lowOilPressure",
        "batteryWarningSignal",
        "batteryOnID",
        "engineCheckRequiredID",
        "absWarning",
        "battery",
        "lowFuelWarning",
        "engineTempHigh",
        "neutralLight"
    ]
    property int currentComponentIndex: 0

    Timer {
        id: componentTimer
        interval: 2000 // 2 seconds for changing component
        repeat: true
        running: true
        onTriggered: {
            root.changeComponent(root.componentList[root.currentComponentIndex])
            root.currentComponentIndex = (root.currentComponentIndex + 1) % root.componentList.length
        }
    }

    Timer {
        id: toggleTimer
        interval: 1000 // 1 second for toggling isTrue property
        repeat: true
        running: true
        onTriggered: {
            toggleIsTrue()
        }
    }
    Timer {
        id: batteryTimer
        interval: 500 // Update every second
        repeat: true // Repeat the timer
        running: true // Start the timer immediately or control it based on your needs

        onTriggered: {
            // Increment the battery level (example increment)
            battery.batteryLevel += 1;
            if (battery.batteryLevel > 100) {
                battery.batteryLevel = 0; // Reset battery level when it reaches 100%
            }
        }
    }

    function updateComponentVisibility() {
        backlightNotWorking.visible = visibleComponent === "backlightNotWorking"
        frontLightNotWorking.visible = visibleComponent === "frontLightNotWorking"
        lowOilPressure.visible = visibleComponent === "lowOilPressure"
        batteryWarningSignal.visible = visibleComponent === "batteryWarningSignal"
        batteryOnID.visible = visibleComponent === "batteryOnID"
        engineCheckRequiredID.visible = visibleComponent === "engineCheckRequiredID"
        absWarning.visible = visibleComponent === "absWarning"
        battery.visible = visibleComponent === "battery"
        lowFuelWarning.visible = visibleComponent === "lowFuelWarning"
        engineTempHigh.visible = visibleComponent === "engineTempHigh"
        neutralLight.visible = visibleComponent === "neutralLight"
    }

    function toggleIsTrue() {
        backlightNotWorking.isTrue = !backlightNotWorking.isTrue
        frontLightNotWorking.isFrontLightNotWorking = !frontLightNotWorking.isFrontLightNotWorking
        lowOilPressure.isTrue = !lowOilPressure.isTrue
        batteryWarningSignal.isTrue = !batteryWarningSignal.isTrue
        batteryOnID.isTrue = !batteryOnID.isTrue
        engineCheckRequiredID.isTrue = !engineCheckRequiredID.isTrue
        absWarning.isTrue = !absWarning.isTrue
        lowFuelWarning.isTrue = !lowFuelWarning.isTrue
        engineTempHigh.isTrue = !engineTempHigh.isTrue
        neutralLight.isTrue = !neutralLight.isTrue
    }

    BacklightNotWorking {
        id: backlightNotWorking
        width: 200
        height: 200
        isTrue: false
        anchors.centerIn: parent
    }

    Rectangle {
        id: frontLightNotWorking
        property bool isFrontLightNotWorking: true
        width: 200
        height: 200
        anchors.centerIn: parent

        Rectangle {
            id: light
            width: parent.width * 0.5
            height: parent.height * 0.5
            radius: 50
            anchors.centerIn: parent
            color: frontLightNotWorking.isFrontLightNotWorking ? "red" : "grey"
        }
        Text {
            id: name
            text: qsTr("frontLightNotWorking")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 2
            font.family: "Montserrat"
        }
    }

    CustomeWarnings {
        id: lowOilPressure
        text: "lowOilPressure"
        isTrue: false
        imageSource: "qrc:/images/lowoilpressure.png"
        imgHeight: 120
        imgWidth: 120
        anchors.centerIn: parent
    }

    CustomeWarnings {
        id: batteryWarningSignal
        text: "isBatteryLow"
        isTrue: false
        imageSource: "qrc:/images/batteryWarning.png"
        imgHeight: 120
        imgWidth: 120
        anchors.centerIn: parent
    }

    CustomeWarnings {
        id: batteryOnID
        text: "isBatteryOn"
        isTrue: false
        imageSource: "qrc:/images/batteryOn.png"
        anchors.centerIn: parent
    }

    CustomeWarnings {
        id: engineCheckRequiredID
        text: "engineCheckRequired"
        isTrue: false
        imageSource: "qrc:/images/engineCheckRequired.png"
        imgHeight: 100
        anchors.centerIn: parent
    }

    CustomeWarnings {
        id: absWarning
        text: "absWarning"
        isTrue: true
        imageSource: "qrc:/images/absWarning.png"
        imgHeight: 80
        imgWidth: 100
        anchors.centerIn: parent
    }

    Battery {
        id: battery
        batteryLevel: 67
        anchors.centerIn: parent
    }

    CustomeWarnings {
        id: lowFuelWarning
        text: "lowFuelWarningLight"
        isTrue: true
        imageSource: "qrc:/images/lowFuelWarningLight.png"
        imgHeight: 80
        imgWidth: 80
        anchors.centerIn: parent
    }

    CustomeWarnings {
        id: engineTempHigh
        text: "engineTempHigh"
        isTrue: false
        imageSource: "qrc:/images/engineTempHighButton.png"
        imgHeight: 120
        imgWidth: 120
        anchors.centerIn: parent
    }

    Rectangle {
        id: neutralLight
        property bool isTrue: true
        width: 200
        height: 200
        anchors.centerIn: parent

        Text {
            id: neutralLightText
            anchors.centerIn: parent
            text: qsTr("N")
            font.bold: true
            font.family: "Montserrat"
            font.pixelSize: 140
            color: neutralLight.isTrue ? "green" : "#b0b5b1"
        }
        Text {
            id: textID
            text: qsTr("switchOnNeutralLight")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 2
            font.family: "Montserrat"
        }
    }
}
