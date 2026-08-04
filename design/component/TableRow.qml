import QtQuick
import QtQuick.Layouts

Row {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    property var columns: []
    anchors.verticalCenter: parent.verticalCenter

    Repeater {
        model: columns

        Text {
            required property var modelData

            width: modelData.width
            text: modelData.text
            color: "#E0E0E0"
            font.pixelSize: 18
            font.family: roboto.name
        }
    }
}
