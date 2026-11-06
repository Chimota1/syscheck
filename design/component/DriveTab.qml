import QtQuick
import QtQuick.Layouts

Rectangle {
    id: root
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}

    property string modelName
    property string interfaceName
    property bool selected: false
    property color accentColor: "#00D4FF"

    signal clicked()

    Layout.fillWidth: true
    implicitHeight: 56
    radius: 6
    color: selected ? "#241C38" : mouseArea.containsMouse ? "#1B1D25" : "#15161B"
    border.width: 1
    border.color: selected ? "#33284F" : "#1E2028"

    Column {
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.verticalCenter: parent.verticalCenter
        spacing: 3

        Text {
            text: root.modelName
            color: root.selected ? "#F0F2F8" : "#8B90A0"
            font.family: roboto.name
            font.pixelSize: 14
        }

        Text {
            text: root.interfaceName
            color: root.selected ? root.accentColor : "#5F6472"
            font.family: jetbrainsmono.name
            font.pixelSize: 11
        }
    }

    Rectangle {
        visible: root.selected
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        height: 2
        color: root.accentColor
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: root.clicked()
    }
}
