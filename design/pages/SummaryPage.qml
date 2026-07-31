import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/qt/qml/syscheck/design/component"
Item{
    anchors.fill: parent
    ScrollView{
        id:scrollView
        width: parent.width
        height: parent.height
        leftPadding: 10
        topPadding: 6
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical: ScrollBar{

            background: Rectangle {
                color: "#0F1015"
                radius: 4
            }

            contentItem: Rectangle {
                radius: 4
                color: "#404552"
            }
        }
        RowLayout{
            width: scrollView.availableWidth
            Layout.alignment: Qt.AlignTop
            spacing: 20
            ColumnLayout{
                Layout.fillWidth: true
                spacing: 20
                InfoCard{
                    Layout.fillWidth: true
                    title: qsTr("CPU  —  Quick Summary")
                    titleColor: "#FF9800"
                    InfoCardSection {
                        sectionTitle: qsTr("Processor")
                    }
                    Repeater{
                        model: [
                            { name: "Name", value: "Intel Core i9-14900K" },
                            { name: "Codename", value: "Raptor Lake Refresh" },
                            { name: "Package", value: "LGA1700" },
                            { name: "Technology", value: "Intel 7" }
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("Clocks  (current)")
                    }
                    Repeater{
                        model: [
                            {name: "Core Speed", value: "5600 MHz"},
                            {name: "Multiplier", value: "x56  (8 × 100)"},
                            {name: "Bus Speed", value: "100.0 MHz"},
                            {name: "Rated FSB", value: "-"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("Cache")
                    }
                    Repeater{
                        model: [
                            {name: "L1 Data", value: "80 KB  (per P-core)"},
                            {name: "L1 Inst.", value: "32 KB  (per P-core)"},
                            {name: "L2", value: "2 MB  (per P-core cluster)"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }
                InfoCard{
                    title: qsTr("Motherboard  —  Quick Summary")
                    titleColor: "#FF9800"
                    Layout.fillWidth: true
                    InfoCardSection{
                        sectionTitle: qsTr("Board")
                    }
                    Repeater{
                        model: [
                            {name: "Manufacturer", value: "American Megatrends"},
                            {name: "Model", value: "3601"},
                            {name: "Chipset", value: "03/15/2024"},
                            {name: "BIOS", value: "UEFI Mode  +  Secure Boot ON"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("Memory Slots")
                    }
                    Repeater{
                        model: [
                            {name: "Slots", value: "American Megatrends"},
                            {name: "Type", value: "3601"},
                            {name: "Speed", value: "03/15/2024"},
                            {name: "Dual Channel", value: "UEFI Mode  +  Secure Boot ON"},
                            {name: "Total", value: "UEFI Mode  +  Secure Boot ON"},
                            {name: "CL", value: "UEFI Mode  +  Secure Boot ON"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }
            }
            ColumnLayout{
                Layout.fillWidth: true
                spacing: 20
                InfoCard{
                    title: qsTr("Operating System")
                    titleColor: "#00E676"
                    Layout.fillWidth: true
                    Repeater{
                        model: [
                            {name: "OS Name", value: "Microsoft Windows 11 Pro"},
                            {name: "Build", value: "22631.3447  (23H2)"},
                            {name: "Install Date", value: "2024-01-14"},
                            {name: "Uptime", value: "6 days  14 h  23 min"},
                            {name: "Username", value: "Administrator"},
                            {name: "Computer Name", value: "WORKSTATION-01"},
                            {name: "Domain", value: "WORKGROUP"},
                            {name: ".NET Framework", value: "4.8.9195  /  8.0.3"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }
                InfoCard{
                    title: qsTr("BIOS  &  Firmware")
                    titleColor: "#FFD600"
                    Layout.fillWidth: true
                    Repeater{
                        model: [
                            {name: "BIOS Vendor", value: "American Megatrends"},
                            {name: "BIOS Version", value: "3601"},
                            {name: "BIOS Date", value: "03/15/2024"},
                            {name: "UEFI", value: "UEFI Mode  +  Secure Boot ON"},
                            {name: "EC Firmware", value: "ASUS EC 1.02"},
                            {name: "ME Firmware", value: "Intel ME 16.1.30.2307"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }
                InfoCard{
                    title: qsTr("GPU  &  Display")
                    titleColor: "#B47EFF"
                    Layout.fillWidth: true
                    InfoCardSection{
                        sectionTitle: qsTr("Primary GPU")
                    }
                    Repeater{
                        model: [
                            {name: "Model", value: "American Megatrends"},
                            {name: "GPU Clock", value: "3601"},
                            {name: "VRAM", value: "03/15/2024"},
                            {name: "Driver", value: "UEFI Mode  +  Secure Boot ON"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("Display")
                    }
                    Repeater{
                        model: [
                            {name: "Monitor", value: "American Megatrends"},
                            {name: "Resolution", value: "3601"},
                            {name: "HDR", value: "03/15/2024"},
                            {name: "Refresh Rate", value: "UEFI Mode  +  Secure Boot ON"},
                            {name: "Color Depth", value: "10-bit  /  HDR10"}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }
            }
        }
    }
}
