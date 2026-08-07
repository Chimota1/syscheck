import QtQuick

Rectangle {
    id: root
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    property bool isActive: root.precent > 0.3 ? true : false
    property string coreName
    property string coreStatus: isActive ? "boost" : "idle"
    property color coreStatusColor: isActive ? "#00B4D8" : "#4A4F60"
    property color bgColor: "#0D0D14"
    property string coreMultiplier
    property string clockSpeed
    property real precent
    implicitHeight: 150
    implicitWidth: 200
    radius: 15
    color: bgColor
    opacity: isActive ? 1 : 0.5
    Rectangle{
        id: topBar
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        color: coreStatusColor
        opacity: isActive ? 1 : 0.5
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
            spacing: 30
            Text {
                text: qsTr(coreName)
                color: coreStatusColor
                font.family: jetbrainsmono.name
                font.pixelSize: 12
                opacity: isActive ? 1 : 0.5
            }
            Text {
                text: qsTr(coreStatus)
                color: coreStatusColor
                font.family: roboto.name
                font.pixelSize: 12
                opacity: isActive ? 1 : 0.5
            }
        }
        Text {
            text: qsTr(coreMultiplier)
            color: isActive ? "#E0E0E0" : "#4A4F60"
            font.family: jetbrainsmono.name
            font.pixelSize: 14
            opacity: isActive ? 1 : 0.5
        }
        Text {
            text: qsTr(clockSpeed)
            color: coreStatusColor
            font.family: jetbrainsmono.name
            font.pixelSize: 13
            opacity: isActive ? 1 : 0.5
        }
        BaseBar{
            sliderColor: "#00B4D8"
            precent: root.precent
            opacity: isActive ? 1 : 0.5
        }
        Text {
            text: Math.round(precent * 100) + "%"
            color: coreStatusColor
            font.family: jetbrainsmono.name
            font.pixelSize: 12
            opacity: isActive ? 1 : 0.5
        }
    }
}
