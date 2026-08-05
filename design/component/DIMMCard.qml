import QtQuick

Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    property string nameOfDIMM
    property string sizeOfDIMM
    property string typeOfDIMM
    implicitHeight: 50
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.leftMargin: 20
    anchors.rightMargin: 20
    radius: 30
    color: "#00B4D8"
    opacity: 0.15
    Column{
        anchors.fill: parent
        spacing: 7
        Rectangle{
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            color: "#00B4D8"
            height: 7
            radius: 30
            opacity: 1
        }
        Column{
            anchors.fill: parent
            spacing: 10
            Text {
                color: "#00B4D8"
                text: qsTr("DIMM " + nameOfDIMM)
                font.family: roboto.name
                font.pixelSize: 9
                opacity: 1
            }
            Row{
                anchors.fill: parent
                spacing: 25
                Text {
                    color: "#7A7A8A"
                    text: qsTr(sizeOfDIMM + " GB")
                    font.family: roboto.name
                    font.pixelSize: 9
                    opacity: 1
                }
                Text {
                    color: "#7A7A8A"
                    text: qsTr(typeOfDIMM)
                    font.family: roboto.name
                    font.pixelSize: 9
                    opacity: 1
                }
            }
        }
    }
}
