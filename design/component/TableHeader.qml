import QtQuick
import QtQuick.Layouts
Rectangle{
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    id: background
    property var myColumns: []
    property int horizontalPadding: 20
    width: parent.width
    height: 38
    color: "#0D0D14"
    Row {
        id: headerRow
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: background.horizontalPadding
        anchors.rightMargin: background.horizontalPadding
        Repeater {
            model: myColumns

            Text {
                required property var modelData
                required property int index
                width: headerRow.width * modelData.colWidth
                text: modelData.text
                color: "#7A7A8A"
                font.family: jetbrainsmono.name
                font.pixelSize: 12
                elide: Text.ElideRight
            }
        }
    }
}
