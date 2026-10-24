import QtQuick
import QtQuick.Layouts

InfoCard {
    id: root

    property int slotIndex: 0
    property var moduleRows: [
        { label: "Module Mfr.", value: "Kingston Technology", valueColor: "#E8EAF0" },
        { label: "DRAM Mfr.", value: "SK Hynix", valueColor: "#00C853" },
        { label: "Module Size", value: "8 GB", valueColor: "#E8EAF0" },
        { label: "Type", value: "SO-DIMM  DDR4", valueColor: "#E8EAF0" },
        { label: "Speed", value: "DDR4-3200  (XMP)", valueColor: "#FF9800" },
        { label: "Part Number", value: "KF432S20IB/8", valueColor: "#E8EAF0" },
        { label: "Serial Number", value: "XXXXXXXX", valueColor: "#5F6472" },
        { label: "Manufacture Date", value: "Week 42  /  2023", valueColor: "#E8EAF0" },
        { label: "Ranks", value: "1  Rank  x8", valueColor: "#E8EAF0" },
        { label: "Voltage", value: "1.35  V", valueColor: "#FFD600" },
        { label: "ECC", value: "Not Supported", valueColor: "#5F6472" }
    ]

    Layout.fillWidth: true
    Layout.fillHeight: false
    customMaximumWidth: 2000
    title: qsTr(" SPD  —  Slot  #%1  /  SO-DIMM").arg(slotIndex + 1)
    titleColor: slotIndex === 0 ? "#00B4D8" : "#00C853"

    Column {
        width: parent.width
        spacing: 0

        FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}

        Row {
            anchors.left: parent.left
            anchors.leftMargin: 22
            height: 28
            spacing: 6

            Rectangle {
                width: 64
                height: parent.height
                radius: 4
                color: root.slotIndex === 0 ? "#2B2140" : "#202329"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("Slot #1")
                    color: root.slotIndex === 0 ? "#B47EFF" : "#6F7482"
                    font.family: jetbrainsmono.name
                    font.pixelSize: 11
                }
                Rectangle {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    height: 2
                    color: root.slotIndex === 0 ? "#9B59FF" : "transparent"
                }
            }

            Rectangle {
                width: 64
                height: parent.height
                radius: 4
                color: root.slotIndex === 1 ? "#2B2140" : "#202329"

                Text {
                    anchors.centerIn: parent
                    text: qsTr("Slot #2")
                    color: root.slotIndex === 1 ? "#B47EFF" : "#6F7482"
                    font.family: jetbrainsmono.name
                    font.pixelSize: 11
                }
                Rectangle {
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    height: 2
                    color: root.slotIndex === 1 ? "#9B59FF" : "transparent"
                }
            }
        }

        Item {
            width: parent.width
            height: 6
        }

        Repeater {
            model: root.moduleRows

            InfoRow {
                required property var modelData
                required property int index

                nameOfBlock: modelData.label
                valueOfBlock: modelData.value
                valueColor: modelData.valueColor
                colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
            }
        }
    }
}
