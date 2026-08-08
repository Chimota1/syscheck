import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    property string nameOfBlock
    property string valueOfBlock
    property color colorOfBlock
    property bool customUnderline: false

    anchors.left: parent.left
    anchors.right: parent.right
    anchors.leftMargin: 6
    anchors.rightMargin: 6
    height: 30
    color: colorOfBlock
    radius: 10

    RowLayout {
        anchors.fill: parent
        anchors.leftMargin: 20
        anchors.rightMargin: 20
        spacing: 15

        Text {
            id: nameofblock
            text: nameOfBlock
            font.family: roboto.name
            font.pixelSize: 14
            color: "#8B90A0"
            font.underline: customUnderline
            Layout.fillWidth: true
            MouseArea {
                anchors.fill: parent
                enabled: customUnderline
                hoverEnabled: customUnderline
                cursorShape: customUnderline ? Qt.PointingHandCursor : Qt.ArrowCursor
            }
        }

        Text {
            id: valueBlock
            text: valueOfBlock
            font.family: roboto.name
            font.pixelSize: 14
            color: "#E8EAF0"
            Layout.alignment: Qt.AlignRight
        }
    }
}
