import QtQuick
import QtQuick.Layouts

Row {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    id: root
    property var myColumns: []
    property int horizontalPadding: 20
    width: parent.width
    leftPadding: root.horizontalPadding
    rightPadding: root.horizontalPadding

    Repeater {
        model: myColumns

        Text {
            required property var modelData

            width: (root.width - root.leftPadding - root.rightPadding) * modelData.customWidth
            text: modelData.text
            color: modelData.customColor ? modelData.customColor : "#E0E0E0"
            font.pixelSize: 10
            font.family: roboto.name
            elide: Text.ElideRight
        }
    }
}
