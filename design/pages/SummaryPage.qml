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
            spacing: 20
            ColumnLayout{
                Layout.fillWidth: true
                spacing: 20
                Layout.alignment: Qt.AlignTop
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
                Layout.alignment: Qt.AlignTop
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
            SensorCard{
                Layout.fillHeight: true
                Layout.fillWidth: true
                title: qsTr("Live System Snapshot")
                titleColor: "#FF3D3D"
                Layout.alignment: Qt.AlignTop
                SensorBar{
                    title: qsTr("CPU Package Temp")
                    value: qsTr("78°C")
                    sliderColor: "#FF9800"
                }
                SensorBar{
                    title: qsTr("CPU Utilization")
                    value: qsTr("72°%")
                    sliderColor: "#00D4FF"
                }
                SensorBar{
                    title: qsTr("CPU Package Power")
                    value: qsTr("185 W")
                    sliderColor: "#FF3D3D"
                }
                SensorBar{
                    title: qsTr("CPU Core Voltage")
                    value: qsTr("1.312 V")
                    sliderColor: "#FFD600"
                }
                SensorBar{
                    title: qsTr("CPU Package Temp")
                    value: qsTr("78°C")
                    sliderColor: "#FF9800"
                }
                SensorBar{
                    title: qsTr("GPU Core Temp")
                    value: qsTr("64°C")
                    sliderColor: "#00E676"
                }
                SensorBar{
                    title: qsTr("GPU Utilization")
                    value: qsTr("88%")
                    sliderColor: "#00E676"
                }
                SensorBar{
                    title: qsTr("GPU Power")
                    value: qsTr("310 W")
                    sliderColor: "#FF9800"
                }
                SensorBar{
                    title: qsTr("Memory Used")
                    value: qsTr("48.2 / 64 GB")
                    sliderColor: "#B47EFF"
                }
                SensorBar{
                    title: qsTr("VRAM Used")
                    value: qsTr("14.2 / 24 GB")
                    sliderColor: "#B47EFF"
                }
                SensorBar{
                    title: qsTr("Sys Fan 1")
                    value: qsTr("1240 RPM")
                    sliderColor: "#00D4FF"
                }
                SensorBar{
                    title: qsTr("CPU AIO Pump")
                    value: qsTr("2600 RPM")
                    sliderColor: "#00D4FF"
                }
                SensorBar{
                    title: qsTr("+12V Rail")
                    value: qsTr("12.024 V")
                    sliderColor: "#00E676"
                }
                SensorBar{
                    title: qsTr("VRM Temp")
                    value: qsTr("68°C")
                    sliderColor: "#FFD600"
                }
                SensorBar{
                    title: qsTr("M.2 NVMe Temp")
                    value: qsTr("52°C")
                    sliderColor: "#FF9800"
                }
            }
        }
    }
}
