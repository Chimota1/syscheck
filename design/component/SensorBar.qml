import QtQuick
import QtQuick.Layouts

Column{
    property string title
    property real precent: 0.67
    property color sliderColor
    property string value
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.leftMargin: 10
    anchors.rightMargin: 10
    spacing: 2
    RowLayout{
        spacing: 150
        Text{
            text: title
            color: "#8B90A0"
            font.pixelSize: 12
            font.family: roboto.name
        }
        Text {
            text: value
            color: sliderColor
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
    }
    Rectangle {
        id: background
        width: parent.width
        height: 20
        radius: 25
        color: "#4A4F60"
        Rectangle{
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: background.width * precent
            radius: parent.radius
            color: sliderColor
        }
    }
}
