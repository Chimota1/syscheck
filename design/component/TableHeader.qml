import QtQuick
import QtQuick.Layouts
Rectangle{
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    id: background
    property var myColumns: []
    width: parent.width
    height: 50
    color: "#0D0D14"
    Row {
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 20
        Repeater {
            model: myColumns

            Text {
                required property var modelData
                required property int index
                width: background.width * modelData.colWidth
                text: modelData.text
                color: "#7A7A8A"
                font.family: jetbrainsmono.name
                font.pixelSize: 16
            }
        }
    }
}
