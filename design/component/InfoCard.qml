import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    property string title
    property color titleColor
    default property alias contentBlock : content.children
    Layout.fillWidth: true
    Layout.preferredHeight: 480
    Layout.maximumWidth: 520
    Layout.alignment: Qt.AlignTop | Qt.AlignLeft
    border.color: "#0D0F17"
    border.width: 3
    color: "#1B1D23"
    radius: 15
    clip: true
    Rectangle{
        id: titlebackground
        width: parent.width
        height: parent.height * 0.1
        color: "#000000"
        anchors.bottomMargin: 20
        radius: 5
        Text {
            id: titletext
            text: "⬛" + title
            color: titleColor
            font.family: jetbrainsmono.name
            font.pixelSize: 20
            anchors.left: titlebackground.left
            anchors.leftMargin: 15
            anchors.verticalCenter: titlebackground.verticalCenter
        }
    }
    ScrollView{
        id: scroll
        anchors.top: titlebackground.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 10
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical: ScrollBar{
            background: Rectangle {
                color: "#0F1015"
                radius: 4
            }

            contentItem: Rectangle {
                radius: 4
                color: "#404552"
            }
        }
        Column {
            id: content
            anchors.top: titlebackground.bottom
            width: scroll.availableWidth
            spacing: 2
        }
    }
}
