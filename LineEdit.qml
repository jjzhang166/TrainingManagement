import QtQuick 2.0
import QtQuick.Controls 1.3
Rectangle{
    border.width: 1;
    border.color: "black";
    radius: 2;
    width: 200;
    height: 32;
    property alias echoMode: txtField.echoMode;
    TextField{
        id: txtField;
        anchors.fill: parent;
        font.pixelSize: 14;
        font.family: "Microsoft YaHei";
    }
}
