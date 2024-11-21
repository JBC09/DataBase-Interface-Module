import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    width: parent.width;
    Layout.preferredHeight: 50

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
            color: "gray"
        }
        Loader {
            id: inputLoader

        }
    }

}
