import QtQuick
import QtQuick.Layouts

Rectangle {
    id: root
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}

    property string title
    property string value
    property string unit
    property string note
    property color accentColor: "#00C853"
    property int contentPadding: 14

    Layout.fillWidth: true
    implicitHeight: 92
    radius: 8
    color: Qt.rgba(accentColor.r, accentColor.g, accentColor.b, 0.10)
    border.width: 1
    border.color: Qt.rgba(accentColor.r, accentColor.g, accentColor.b, 0.40)

    Text {
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: root.contentPadding
        anchors.topMargin: root.contentPadding - 2
        text: root.title
        color: "#8B90A0"
        font.family: jetbrainsmono.name
        font.pixelSize: 11
        font.letterSpacing: 1.2
    }

    Item {
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: root.contentPadding
        anchors.bottomMargin: root.contentPadding - 4 + (noteText.visible ? 13 : 0)
        width: valueText.implicitWidth + (unitText.visible ? unitText.implicitWidth + 8 : 0)
        height: valueText.implicitHeight

        Text {
            id: valueText
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            text: root.value
            color: root.accentColor
            font.family: jetbrainsmono.name
            font.pixelSize: 30
            font.weight: Font.DemiBold
        }

        Text {
            id: unitText
            anchors.left: valueText.right
            anchors.leftMargin: 8
            anchors.baseline: valueText.baseline
            visible: text.length > 0
            text: root.unit
            color: "#6F7482"
            font.family: jetbrainsmono.name
            font.pixelSize: 11
        }
    }

    Text {
        id: noteText
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.leftMargin: root.contentPadding
        anchors.bottomMargin: root.contentPadding - 6
        visible: root.note.length > 0
        text: root.note
        color: "#6F7482"
        font.family: jetbrainsmono.name
        font.pixelSize: 10
    }
}
