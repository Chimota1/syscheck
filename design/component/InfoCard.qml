import QtQuick
Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    property string title
    property color titleColor
    width: parent.width
    height: parent.height
    anchors.centerIn: parent
    border.color: "#0D0F17";
    border.width: 3
    color: "#000000"
    radius: 50
    clip: true
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
    Rectangle{
        id: line
        width: parent.width
        height: 2
        color: "#2A2A2A"
        anchors.top: titletext.bottom
        anchors.topMargin: 10
        opacity: 0.7
    }
}
