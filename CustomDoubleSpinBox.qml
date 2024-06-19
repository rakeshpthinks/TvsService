import QtQuick 2.14
import QtQuick.Controls 2.15

Item {
    id: doubleSpinBox
    property real value: 0.0
    property real minimum: 0.0
    property real maximum: 9999.0
    property real stepSize: 0.1

    width: 100
    height: spinBox.height

    SpinBox {
        id: spinBox
        anchors.fill: parent
        from: doubleSpinBox.minimum / doubleSpinBox.stepSize
        to: doubleSpinBox.maximum / doubleSpinBox.stepSize
        stepSize: 1

        value: doubleSpinBox.value / doubleSpinBox.stepSize
        onValueChanged: doubleSpinBox.value = value * doubleSpinBox.stepSize

        editable: true

        // Customize text from integer to float display
        textFromValue: function(value) {
            return (value * doubleSpinBox.stepSize).toFixed(1);
        }

        // Customize value from text input
        valueFromText: function(text) {
            return parseFloat(text) / doubleSpinBox.stepSize;
        }
    }
}
