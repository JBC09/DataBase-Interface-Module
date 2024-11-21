import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import "./"

Rectangle {
    id: rightSection
    width: 400
    height: 450
    border.width: 1
    border.color: "#ddd"
    radius: 10

    Rectangle { // 본 데이터를 감싸는 Rect
        anchors.centerIn: parent
        width: parent.width - 50
        height: parent.height - 50
        color: "transparent"

        InputLabel {
            titles: "Create & Delete Log"

            input: ScrollView {
                id: scrollView
                width: 350
                height: 350
                clip: true // 내용이 넘치지 않도록

                background: Rectangle {
                    color: "#eee"
                    radius: 10
                }

                Column {
                    width: scrollView.width - 20 // 스크롤바 공간 고려
                    spacing: 10

                    Repeater {
                        model: 20
                        delegate: Rectangle {
                            width: parent.width
                            height: 50
                            radius: 5
                            color: index % 2 ? "#f0f0f0" : "#e0e0e0"

                            Text {
                                anchors.centerIn: parent
                                text: "Item " + (index + 1)
                            }
                        }
                    }
                }
            }
        }
    }
}