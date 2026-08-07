import QtQuick

Rectangle {
    id: root
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    property string coreName
    property string coreStatus
    property color coreStatusColor
    property string coreMultiplier
    property string clockSpeed
    property real precent
    implicitHeight: 150
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.leftMargin: 20
    anchors.rightMargin: 20
    radius: 15
    Rectangle{
        id: topBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        color: "#00B4D8"
        height: 4
        radius: 15
    }
    Column{
        anchors.top: topBar.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 12
        spacing: 8
        Row{
            spacing: 50
            Text {
                text: qsTr(coreName)
                color: "#00B4D8"
                font.family: jetbrainsmono.name
                font.pixelSize: 12
            }
            Text {
                text: qsTr(coreStatus)
                color: coreStatusColor
                font.family: roboto.name
                font.pixelSize: 12
            }
        }
        Text {
            text: qsTr(coreMultiplier)
            color: "#E0E0E0"
            font.family: jetbrainsmono.name
            font.pixelSize: 14
        }
        Text {
            text: qsTr(clockSpeed)
            color: "#00B4D8"
            font.family: jetbrainsmono.name
            font.pixelSize: 13
        }
        BaseBar{
            sliderColor: "#00B4D8"
            precent: root.precent
        }
        Text {
            text: Math.round(precent * 100) + "%"
            color: "#00B4D8"
            font.family: jetbrainsmono.name
            font.pixelSize: 12
        }
    }
}
