import QtQuick
import QtQuick.Controls
import QtQuick.Layouts


TextField  {
    id: outlineTextField
    width: 350;
    font.pixelSize: 14;
    font.family: "Pretendard"

    topPadding: 9
    bottomPadding: 9
    leftPadding: 10
    rightPadding: 9

    background: Rectangle {
        color: "#eee"

        radius: 4

    }
}