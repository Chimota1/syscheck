import QtQuick
import QtQuick.Layouts

Column{
    id: root
    property string title
    property real precent
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
        width: parent.width
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
    BaseBar{
        width: parent.width
        precent: root.precent
        sliderColor: root.sliderColor
    }
}
