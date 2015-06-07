import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
Item {
    property alias btnExit: btnExit;
    property alias btnMin: btnMin;
    property alias maDrag: maDrag;
    Rectangle{
        radius: 50;
        anchors.fill: parent;
        Rectangle{
            id: rect;
            color: "#EBF2F9";
            anchors.fill: parent;
            MouseArea {
                id: maDrag;
                anchors.fill: parent;
                property point clickPos: "0,0";
            }

            Rectangle{
                id: rectTop;
                width:parent.width;
                height: 180;
                color: "#169ADA";
                RowLayout{
                    anchors.left: parent.left;
                    anchors.leftMargin: 10;
                    anchors.top: parent.top;
                    height: 30;
                    Text{
                        text: "蕾蕾音乐培训中心";
                        color: "#FFFFFFFF";
                        anchors.left: parent.left;
                        anchors.verticalCenter: parent.verticalCenter;
                        font.pointSize: 12;
                        font.family: "Microsoft YaHei";
                    }
                }

                RowLayout {
                    anchors.top: parent.top;
                    anchors.right: parent.right;
                    height: 30;
                    WindowControlButton{
                        id: btnMin;
                        hoveredColor: "#20FFFFFF";
                        background: "qrc:/resources/images/imgMin";
                    }

                    WindowControlButton{
                        id: btnExit;
                        hoveredColor: "#FFD44027";
                        background: "qrc:/resources/images/imgClose";
                    }
                }
            }
            Rectangle{
                id: rectBottom;
                anchors.top: rectTop.bottom;
                anchors.bottom: parent.bottom;
                width:parent.width;
                color: "#00000000";
                RowLayout{
                    height: 80;
                    width: parent.width;
                    anchors.left: parent.left;
                    anchors.top: parent.top;
                    anchors.topMargin: 30;
                    Rectangle{
                        id: userAvatar;
                        border.width: 1;
                        border.color: "black";
                        width: 80;
                        height: 80;
                        anchors.left: parent.left;
                        anchors.leftMargin: 40;
                        anchors.top: parent.top;
                        Image{
                            anchors.fill: parent;
                            source: "qrc:/resources/images/imgClose";
                        }
                    }
                    LineEdit{
                        id: username;
                        anchors.left: userAvatar.right;
                        anchors.leftMargin: 10
                        anchors.top: parent.top;
                    }
                    LineEdit{
                        id: password;
                        anchors.left: username.left;
                        anchors.bottom: parent.bottom;
                        echoMode: 2;
                    }
                    CheckBox{
                        height: username.height;
                        anchors.left: username.right;
                        anchors.leftMargin: 10;
                        anchors.top: parent.top;
                        anchors.topMargin: 10;
                        text: "记住用户名";
                    }
                    CheckBox{
                        height: username.height;
                        anchors.left: username.right;
                        anchors.leftMargin: 10;
                        anchors.bottom: parent.bottom;
                        anchors.bottomMargin: 10;
                        text: "自动登录";
                    }
                }
                Button{
                    height: 40;
                    anchors.left: parent.left;
                    anchors.horizontalCenter: parent.horizontalCenter;
                    anchors.leftMargin: 80;
                    anchors.bottom: parent.bottom;
                    text: "登录";
                    anchors.bottomMargin: 20;
                }
            }
        }
    }}

