import QtQuick
import QtQuick.Layouts

Row {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    id: root
    property var myColumns: []
    width: parent.width
    anchors.left: parent.left
    anchors.leftMargin: 10

    Repeater {
        model: myColumns

        Text {
            required property var modelData

            width: root.width * modelData.customWidth
            text: modelData.text
            color: modelData.customColor ? modelData.customColor : "#E0E0E0"
            font.pixelSize: 14
            font.family: roboto.name
        }
    }
}
