import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import "./"

Rectangle {
    id: leftSection
    width: 400;
    height: 450;
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

            spacing: 30;

            InputLabel {
                titles: "입력 금액"
                input: TextFieldCustom {
                    placeholderText: "ex) 10000"
                }
            }

            InputLabel {
                titles: "요청 개수"
                input: TextFieldCustom {
                    placeholderText: "ex) 20"
                }
            }

            InputLabel {
                titles: "배출 개수"
                input: TextFieldCustom {
                    placeholderText: "ex) 20"
                }
            }

            InputLabel {
                titles: "DB 선택"

                input:  ComboBox { // DB 종류 선택 콤보박스
                    textRole: "text"
                    valueRole: "value"
                    width: 350

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

                    currentIndex: 0; // 기본값을 0번째 index로 선택

                }
            }

            InputLabel {
                titles: "Status"

                input:  ComboBox { // DB 종류 선택 콤보박스
                    textRole: "text"
                    valueRole: "value"
                    width: 350

                    topPadding: 6
                    bottomPadding: 6
                    leftPadding: 6
                    rightPadding: 6

                    background: Rectangle {
                        radius: 5;
                        color: "#eee"
                    }

                    model: ListModel {
                        ListElement {
                            text: "200"
                            value: 200
                        }

                        ListElement {
                            text: "300"
                            value: 300
                        }

                        ListElement {
                            text: "400"
                            value: 400
                        }

                        ListElement {
                            text: "500"
                            value: 500
                        }
                    }

                    currentIndex: 0; // 기본값을 0번째 index로 선택

                }
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