import QtQuick
import QtQuick.Layouts
Rectangle{
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    width: parent.width
    height: 50
    color: "#0D0D14"
    border.color: "#1E1E26"
    border.width: 5
    Row {
        anchors.verticalCenter: parent.verticalCenter
        property var columns: []

        Repeater {
            model: columns

            Text {
                required property var modelData

                width: modelData.width
                text: modelData.text
                color: "#7A7A8A"
                font.family: jetbrainsmono.name
                font.pixelSize: 18
            }
        }
    }
}
