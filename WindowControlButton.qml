import QtQuick 2.0

Rectangle {
    id: root;
    width: 30;
    height: 30;
    signal clicked;
    property alias text: label.text;
    property alias background: image.source;
    property color normalColor : "#00000000";
    property color hoveredColor : "#00000000";
    color: "#00000000";
    z: 1;
    Text{
        z: 3
        id: label;
        anchors.fill: parent;
    }
    Image {
        id: image;
        anchors.fill: parent;
        z: 2;
    }
    MouseArea{
        anchors.fill: parent;
        hoverEnabled: true;
        onClicked:{
            root.clicked();
        }
        onEntered:
            ColorAnimation {
            target: root;
            property: "color";
            to: hoveredColor;
            duration: 200;
        }
        onExited:
            ColorAnimation {
            target: root;
            property: "color";
            to: normalColor;
            duration: 200;
        }
    }
}

