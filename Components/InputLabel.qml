import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    width: parent.width;
    Layout.preferredHeight: 40

    color: "transparent"

    property string titles
    property alias input: inputLoader.sourceComponent

    Column {
        width: parent.width;
        spacing: 5;

        Text {
            text: qsTr(titles);
            font.bold: true;
            font.family: "Pretendard"
            font.pixelSize: 12;
            color: "gray"
        }
        Loader {
            id: inputLoader

        }
    }

}
