import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import myCalc.custom 1.0

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
                property alias resultText : resultText.text

                Text {
                    id: resultText
                    anchors.centerIn: parent
                    text: "0"
                }
            }

            Button {
                id: submitButton
                width: parent.width
                height: 50
                text: "Submit"

                onClicked: visualResult.resultText = "Clicked"

            }

            Rectangle {
                id: operand1
                width: parent.width
                height: 50
                color: "#FF99CC"
                property alias operant1Text: operand1_text.text

                TextField {
                    id: operand1_text
                    anchors.centerIn: parent
                    font.bold: true
                    placeholderText: "Operand 1"

                    onTextEdited: {
                        console.log("User input: " + operand1_text.text)
                    }
                }
            }

            Rectangle {
                id: operand2
                width: parent.width
                height: 50
                color: "#FF99CC"
                property alias operant2Text: operand2_text.text

                TextField {
                    id: operand2_text
                    anchors.centerIn: parent
                    font.bold: true
                    placeholderText: "Operand 2"

                    onTextEdited: {
                        console.log("User input: " + operand2_text.text)
                    }

                }
            }

            Button {
                id: addButton
                width: parent.width
                height: 50
                text: "Add"
                onClicked: {
                    console.log(operand1.operant1Text)
                    console.log(operand2.operant2Text)
                    visualResult.resultText = my_calc.add(operand1.operant1Text,
                                            operand2.operant2Text)
                }
            }

            Button {
                id: subtractButton
                width: parent.width
                height: 50
                text: "Subtract"

                onClicked: {
                    console.log(operand1.operant1Text)
                    console.log(operand2.operant2Text)
                    visualResult.resultText = my_calc.subtract(operand1.operant1Text,
                                            operand2.operant2Text)
                }
            }

            Button {
                id: multiplyButton
                width: parent.width
                height: 50
                text: "Multiply"

                onClicked: {
                    console.log(operand1.operant1Text)
                    console.log(operand2.operant2Text)
                    visualResult.resultText = my_calc.multiply(operand1.operant1Text,
                                            operand2.operant2Text)
                }
            }

            Button {
                id: devideButton
                width: parent.width
                height: 50
                text: "Devide"

                onClicked: {
                    console.log(operand1.operant1Text)
                    console.log(operand2.operant2Text)
                    visualResult.resultText = my_calc.devide(operand1.operant1Text,
                                            operand2.operant2Text)
                }
            }
        }

    }
}
