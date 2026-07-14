import QtQuick
import QtQuick.Layouts
Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    property string title
    property color titleColor
    default property alias contentBlock : content.children
    width: parent.width
    height: parent.height
    anchors.centerIn: parent
    border.color: "#0D0F17"
    border.width: 3
    color: "#1B1D23"
    radius: 50
    clip: true
    Rectangle{
        id: titlebackground
        width: parent.width
        height: parent.height * 0.1
        color: "#000000"
        anchors.bottomMargin: 20
        Text {
            id: titletext
            text: "⬛" + title
            color: titleColor
            font.family: jetbrainsmono.name
            font.pixelSize: 20
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 15
            anchors.topMargin: 25
        }
    }
    Column {
        id: content
        anchors.top: titlebackground.bottom
        height: parent.height - 3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 15
        anchors.leftMargin: 3
    }
}
