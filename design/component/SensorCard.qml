import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    property string title
    property color titleColor
    property int customMaximumWidth: 530
    default property alias contentBlock : content.children
    Layout.fillWidth: true
    Layout.maximumWidth: customMaximumWidth
    Layout.alignment: Qt.AlignTop | Qt.AlignLeft
    border.color: "#0D0F17"
    border.width: 3
    color: "#1B1D23"
    radius: 15
    clip: true
    Rectangle{
        id: titlebackground
        width: parent.width
        height: 40
        color: "#000000"
        anchors.bottomMargin: 20
        radius: 5
        Text {
            id: titletext
            text: "⬛" + title
            color: titleColor
            font.family: jetbrainsmono.name
            font.pixelSize: 16
            anchors.left: titlebackground.left
            anchors.leftMargin: 15
            anchors.verticalCenter: titlebackground.verticalCenter
        }
    }
    Column {
        id: content
        anchors.top: titlebackground.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 10
        spacing: 10
    }
    implicitHeight: titlebackground.height
                  + content.implicitHeight
                  + content.anchors.topMargin
                  + 10
}

