import QtQuick

Rectangle {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    id: sidebar
    color: "#181818"
    width: 220
    Column{
        anchors.fill: parent
        spacing: 10
        SidebarSection{
            title: qsTr("SYSTEM")
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
        SidebarSection{
            title: qsTr("HARDWARE")
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
        SidebarSection{
            title: qsTr("MISC")
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
