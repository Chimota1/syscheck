import QtQuick
import QtQuick.Layouts
Item{
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    id: root
    Layout.fillWidth: true
    implicitHeight: 40
    property string title
    property bool isSupport
    property color colorOfBlock
    Rectangle {
        anchors.fill: parent
        radius: 5
        color: isSupport ? colorOfBlock : "#2A2A3A"
        opacity: 0.2
    }
    Rectangle {
        anchors.fill: parent
        radius: 5
        color: "transparent"
        border.color: isSupport ? colorOfBlock : "#2A2A3A"
        border.width: 1
    }
    Text {
        anchors.centerIn: parent
        text: qsTr(title)
        color: isSupport ? colorOfBlock : "#E0E0E0"
        font.family: jetbrainsmono.name
        font.pixelSize: 12
    }
}
