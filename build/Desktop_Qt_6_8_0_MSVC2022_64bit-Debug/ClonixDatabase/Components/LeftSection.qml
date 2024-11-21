import QtQuick
import QtQuick.Window
import QtQuick.Controls

Item {

    property string title
    property alias input: inputLoader.sourceComponent

    GroupBox {
        title: qsTr(title)

        Loader {
            id: inputLoader
            Layout.fillWidth: true
        }
    }

}
