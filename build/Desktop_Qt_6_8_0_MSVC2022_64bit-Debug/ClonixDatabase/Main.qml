import QtQuick
import QtQuick.Layouts
import "Components"
import QtQuick.Controls

Window {
    width: 1000
    height: 550
    visible: true
    minimumWidth: 1000;
    minimumHeight: 550;
    maximumWidth: 1000;
    maximumHeight: 550;

    title: qsTr("Clonix Data")

    ColumnLayout {
        width: parent.width;
        height: parent.height;
        Layout.fillWidth: true

        Layout.alignment: Qt.AlignHCenter

        Text {
            text: qsTr("Clonix SideCar Data");
            color: "#ff4949"
            height: 150;

            verticalAlignment: Text.AlignVCenter
            Layout.alignment: Qt.AlignHCenter

            font {
                pixelSize: 30;
                bold: true;
                family: "Impact"
            }
        }

        Rectangle {
            width: 900;
            height: 400;

            anchors.centerIn: parent;

            radius: 20;

            RowLayout {
                spacing: 100;
                width: parent.width;
                height: parent.height

                Rectangle {
                    id: leftSection
                    width: 400;
                    height: parent.height
                    radius: 10;
                    border.width: 1;
                    border.color: "#ddd"


                    Rectangle { // 본 데이터를 감싸는 Rect
                        anchors.centerIn: parent
                        width: parent.width - 50;
                        height: parent.height - 50;

                        color: "transparent"

                        ColumnLayout {
                            height: parent.height
                            width: parent.width
                            Layout.fillWidth: true

                            spacing: 20;

                            InputLabel {
                                titles: "입력 금액"
                                input: TextFieldCustom {
                                    placeholderText: "ex) 10000"
                                }
                            }

                            InputLabel {
                                titles: "칩의 개수"
                                input: TextFieldCustom {
                                    placeholderText: "ex) 20"
                                }
                            }

                            InputLabel {
                                titles: "DB 선택"

                                input:  ComboBox { // DB 종류 선택 콤보박스
                                    textRole: "text"
                                    valueRole: "value"

                                    topPadding: 6
                                    bottomPadding: 6
                                    leftPadding: 6
                                    rightPadding: 6

                                    background: Rectangle {
                                        radius: 5;
                                        color: "#eee"
                                    }

                                    model: ListModel {
                                        ListElement { // mysql에 관한 박스
                                            text: "MySQL"
                                            value: "mysql"
                                        }

                                        ListElement { // json에 관한 박스
                                            text: "Local Json"
                                            value: "json"
                                        }
                                    }



                                    currentIndex: 0;

                                }
                            }


                            Item {
                                Layout.fillHeight: true  // 남는 공간을 채움
                            }


                            ButtonCustom {
                                labelText: "Send"
                                Layout.fillWidth: true;
                                Layout.bottomMargin: 10
                                height: 40;

                            }
                        }
                    }
                }

                Rectangle {
                    id: rightSection
                    width: 400;
                    height: parent.height
                    border.width: 1;
                    border.color: "#ddd"
                    radius: 10;
                }
            }
        }
    }

}
