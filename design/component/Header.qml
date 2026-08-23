import QtQuick
import QtQuick.Controls
import QtCharts 2.11

Rectangle{
    id: header
    height: 85
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
        id: page
        text: qsTr(currentPage.toUpperCase())
        font.family: jetbrainsmono.name
        font.pixelSize: 32
        color: "#5C5CFF"
        anchors.verticalCenter: parent.verticalCenter
        anchors.centerIn: parent
    }
}

