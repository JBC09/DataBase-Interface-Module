import QtQuick
import QtQuick.Controls
import QtQuick.Window
import "./"

Rectangle {
    id: buttonCustom

    property string labelText: "Button"

    radius: 6

    color:  "#ff4949"




    Text {
        id: buttonLabel
        text: qsTr(labelText)
        anchors.centerIn: parent
        color: "white"
        font.pixelSize: 14
        font.bold: true
        font.family: "Arial"

        Behavior on color {
            ColorAnimation {
                duration: 350
            }
        }
    }

    MouseArea {
        anchors.fill: parent

    }
}