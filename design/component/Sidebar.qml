import QtQuick

Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    property string currentPage: qsTr("Summary")
    id: sidebar
    color: "#181818"
    width: parent.width * 0.2
    Column{
        anchors.fill: parent
        spacing: 10
        Rectangle{
            width: parent.width
            height: 35
            color: "#000000"
            Text {
                id: systemtitle
                text: qsTr("SYSTEM")
                font.bold: true
                font.pixelSize: 20
                font.family: roboto.name
                anchors.centerIn: parent
                color: "#5CA8FF"
            }
        }
        SidebarElement{
            nameOfblock: qsTr("Summary")
        }
        SidebarElement{
            nameOfblock: qsTr("OS")
        }
        SidebarElement{
            nameOfblock: qsTr("MotherBoard")
        }
        Rectangle{
            width: parent.width
            height: 35
            color: "#000000"
            Text {
                id: hardwaretitle
                text: qsTr("HARDWARE")
                font.bold: true
                font.pixelSize: 20
                font.family: roboto.name
                anchors.centerIn: parent
                color: "#5CA8FF"
            }
        }
        SidebarElement{
            nameOfblock: qsTr("CPU")
        }
        SidebarElement{
            nameOfblock: qsTr("GPU")
        }
        SidebarElement{
            nameOfblock: qsTr("Memory")
        }
        SidebarElement{
            nameOfblock: qsTr("Storage")
        }
        SidebarElement{
            nameOfblock: qsTr("Display")
        }

        Rectangle{
            width: parent.width
            height: 35
            color: "#000000"
            Text {
                id: misctitle
                text: qsTr("MISC")
                font.bold: true
                font.pixelSize: 20
                font.family: roboto.name
                anchors.centerIn: parent
                color: "#5CA8FF"
            }
        }
        SidebarElement{
            nameOfblock: qsTr("Network")
        }
        SidebarElement{
            nameOfblock: qsTr("Power")
        }
        SidebarElement{
            nameOfblock: qsTr("Sensor")
        }
    }
}
