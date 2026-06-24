import QtQuick

Rectangle {
    id: footer
    height: 30
    color:"#000000"
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    Row{
        id: footercompinfo
        spacing: 5
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: cpuname
            text: qsTr("CPU:")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: roboto.name
        }
        Text {
            id: cputemp
            text: qsTr("00°C |")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
        Text {
            id: gpuname
            text: qsTr("GPU:")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: roboto.name
        }
        Text {
            id: gputemp
            text: qsTr("00°C |")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
        Text {
            id: ramname
            text: qsTr("RAM:")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: roboto.name
        }
        Text {
            id: ramusagecurrent
            text: qsTr("00.0 /")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
        Text {
            id: ramcapacity
            text: qsTr("00.0GB |")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
        Text {
            id: cpupower
            text: qsTr("CPU Power:")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: roboto.name
        }
        Text {
            id: cpupowerusage
            text: qsTr("000W |")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
        Text {
            id: totalusage
            text: qsTr("Total:")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: roboto.name
        }
        Text {
            id: totalusagewatt
            text: qsTr("000W")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
    }

    Row{
        id: infoaboutcreator
        spacing: 5
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: version
            text: qsTr("v0.0.1beta ")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: jetbrainsmono.name
        }
        Text {
            id: creator
            text: qsTr("Github/Chimota1")
            color: "#C5C4C4"
            font.pixelSize: 12
            font.family: roboto.name
        }
    }
}
