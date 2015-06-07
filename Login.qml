import QtQuick 2.4
import QtQuick.Window 2.0

Window{
    id: loginWindow;
    flags: Qt.FramelessWindowHint;
    width: 430;
    height: 330;
    visible: true;
    LoginForm {
        anchors.fill: parent;
        maDrag.onPressed: {
            maDrag.clickPos  = Qt.point(mouse.x,mouse.y)
        }
        maDrag.onPositionChanged: {
            var delta = Qt.point(mouse.x-maDrag.clickPos.x, mouse.y-maDrag.clickPos.y)
            loginWindow.setX(loginWindow.x+delta.x)
            loginWindow.setY(loginWindow.y+delta.y)
        }

        btnExit.onClicked: Qt.quit();
        btnMin.onClicked: loginWindow.showMinimized();
    }
}

