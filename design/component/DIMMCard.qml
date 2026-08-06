import QtQuick

Rectangle {
    id:root
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    property string nameOfDIMM
    property string sizeOfDIMM
    property string typeOfDIMM
    implicitHeight: 70
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.leftMargin: 20
    anchors.rightMargin: 20
    radius: 15
    color: "#23232E"
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
            Text {
                color: "#00B4D8"
                text: qsTr("DIMM " + nameOfDIMM)
                font.family: roboto.name
                font.pixelSize: 12
                font.bold: true
            }
            Row{
                spacing: 25
                Text {
                    color: "#7A7A8A"
                    text: qsTr(sizeOfDIMM + " GB")
                    font.family: roboto.name
                    font.pixelSize: 12
                    font.bold: true
                }
                Text {
                    color: "#7A7A8A"
                    text: qsTr(typeOfDIMM)
                    font.family: roboto.name
                    font.pixelSize: 12
                    font.bold: true
                }
            }
        }
    }
