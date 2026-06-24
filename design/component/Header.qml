import QtQuick
import QtQuick.Controls
import QtCharts 2.11

Rectangle{
    id: header
    height: 100
    color: "#000000"
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
        Image {
            id: logo
            source: "qrc:/qt/qml/syscheck/img/logo.png"
            width: 200
            height: 140
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 20
        }
        Text {
            id: timer
            text: qsTr("00:00:00")
            font.family: jetbrainsmono.name
            font.pixelSize: 32
            color: "#5C5CFF"
            anchors.verticalCenter: parent.verticalCenter
            anchors.centerIn: parent
        }
        Text {
            id: exit
            text: qsTr("X")
            font.family: roboto.name
            font.pixelSize: 32
            font.bold: true
            color: "#8BE3FD"
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 70
            MouseArea{
            id: hover
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onClicked: Qt.quit()
        }
    }
}

