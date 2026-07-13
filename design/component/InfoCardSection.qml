import QtQuick

Rectangle {
    property string sectionTitle
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    width: parent.width
    height: 40
    color: "#000000"
    Text {
        id: titleid
        text: "── " + sectionTitle
        font.family: jetbrainsmono.name
        font.pixelSize: 18
        color: "#00D4FF"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 20
    }
}
