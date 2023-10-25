import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: root
    width: 320
    height: 600
    visible: true
    title: qsTr("Hello World")

    Item {
        id: inputData

        width: root.width
        height: contentItem.height

        Column {
            spacing: 20
            width: root.width

            Rectangle {
                id: visualResult
                width: parent.width
                height: 100
                color: "#FF99CC"
                Text {
                    anchors.centerIn: parent
                    text: qsTr("0")
                }
            }

            Button {
                id: submitButton
                width: parent.width
                height: 50
                text: "Submit"

            }

            Rectangle {
                id: operand1
                width: parent.width
                height: 50
                color: "#FF99CC"
                TextField {
                    anchors.centerIn: parent
                    font.bold: true
                    placeholderText: "Operand 1"
                }
            }

            Rectangle {
                id: operand2
                width: parent.width
                height: 50
                color: "#FF99CC"
                TextField {
                    anchors.centerIn: parent
                    font.bold: true
                    placeholderText: "Operand 2"
                }
            }

            Button {
                id: addButton
                width: parent.width
                height: 50
                text: "Add"
            }

            Button {
                id: subtractButton
                width: parent.width
                height: 50
                text: "Subtract"
            }

            Button {
                id: multiplyButton
                width: parent.width
                height: 50
                text: "Multiply"
            }

            Button {
                id: devideButton
                width: parent.width
                height: 50
                text: "Devide"
            }
        }

    }
}
