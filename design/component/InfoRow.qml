import QtQuick
import QtQuick.Layouts

Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    property string nameOfBlock
    property string valueOfBlock
    property color colorOfBlock
    width: parent.width
    height: 30
    color: colorOfBlock
    RowLayout{
        spacing: 150
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        Text {
            id: nameofblock
            text: nameOfBlock
            font.family: roboto.name
            font.pixelSize: 18
            color: "#8B90A0"
            anchors.left: parent.left
            anchors.leftMargin: 20
        }
        Text {
            id: valueBlock
            text: valueOfBlock
            font.family: roboto.name
            font.pixelSize: 18
            color: "#E8EAF0"
        }
    }
}
