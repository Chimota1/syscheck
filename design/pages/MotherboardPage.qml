import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/qt/qml/syscheck/design/component"

Item {
    anchors.fill: parent
    ScrollView{
        id:scrollView
        width: parent.width
        height: parent.height
        leftPadding: 10
        topPadding: 6
        contentHeight: main.implicitHeight
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
            id: main
            width: scrollView.availableWidth
            spacing: 20
            ColumnLayout{
                Layout.fillWidth: true
                spacing: 20
                Layout.alignment: Qt.AlignTop
                InfoCard{
                    title: qsTr("Board  —  Identification")
                    titleColor: "#00B4D8"
                    customMaximumWidth: 400
                    InfoCardSection{
                        sectionTitle: qsTr("Identity")
                    }
                    Repeater{
                        model: [
                            { name: "Manufacturer", value: "ASUSTeK COMPUTER INC." },
                            { name: "Model", value: "ROG STRIX Z790-E GAMING" },
                            { name: "Version / Rev.", value: "Rev 1.xx" },
                            { name: "Serial Number", value: "M3B0KC08538xxxxx" },
                            { name: "MAC Address", value: "A4:C3:F0:XX:XX:XX" },
                        ]
                        InfoRow{
                            required property int index
                            required property var modelData
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }
                InfoCard{
                    title: qsTr("Chipset  &  Architecture")
                    titleColor: "#FFD600"
                    customMaximumWidth: 400
                    InfoCardSection{
                        sectionTitle: qsTr("PCH")
                    }
                    Repeater{
                        model: [
                            { name: "Chipset Vendor", value: "Intel" },
                            { name: "Chipset Model", value: "Z790  (Raptor Lake PCH)" },
                            { name: "Southbridge/LPC", value: "Intel eSPI Controller" },
                            { name: "Platform", value: "LGA1700 / Desktop" },
                        ]
                        InfoRow{
                            required property int index
                            required property var modelData
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }

                InfoCard{
                    title: qsTr("BIOS / UEFI")
                    titleColor: "#FF8C00"
                    customMaximumWidth: 400
                    InfoCardSection{
                        sectionTitle: qsTr("Firmware")
                    }
                    Repeater{
                        model: [
                            { name: "Vendor", value: "American Megatrends  (AMI)" },
                            { name: "Version", value: "3601" },
                            { name: "Release Date", value: "03/15/2024" },
                            { name: "SMBIOS Version", value: "3.3" },
                            { name: "BIOS Size", value: "32 MB" },
                            { name: "Boot Mode", value: "UEFI Active" },
                            { name: "Secure Boot", value: "Enabled ON" }
                        ]
                        InfoRow{
                            required property int index
                            required property var modelData
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
                TableCard{
                    customMaximumWidth: 680
                    title: qsTr("PCIe  &  M.2  Slot  Map")
                    titleColor: "#00B4D8"
                    TableHeader{
                        property var headerContent: [
                            {text: "Slot", colWidth:0.21},
                            {text: "Type", colWidth:0.21},
                            {text: "Status", colWidth:0.29},
                            {text: "Device", colWidth:0.22}
                        ]
                        myColumns: headerContent
                    }
                    Repeater{
                        model: [
                                [ { text: "PCIe x16 #1", customWidth: 0.22, customColor: "#00C853" }, { text: "PCIe 5.0 x16", customWidth: 0.22 }, { text: "Occupied", customWidth: 0.29, customColor: "#00C853" }, { text: "RTX 4090", customWidth: 0.22, customColor: "#00C853" } ],
                                [ { text: "PCIe x16 #2", customWidth: 0.22 }, { text: "PCIe 4.0 x4", customWidth: 0.22 }, { text: "Empty", customWidth: 0.29 }, { text: "Empty", customWidth: 0.22 } ],
                                [ { text: "PCIe x1 #1", customWidth: 0.22, }, { text: "PCIe 4.0 x1", customWidth: 0.22 }, { text: "Empty", customWidth: 0.29, }, { text: "Empty", customWidth: 0.22,  } ],
                                [ { text: "M.2 #1 (CPU)", customWidth: 0.22, customColor: "#00B4D8" }, { text: "PCIe 5.0 x4", customWidth: 0.22 }, { text: "Occupied", customWidth: 0.29, customColor: "#00B4D8" }, { text: "Samsung 990 Pro 2TB", customWidth: 0.22, customColor: "#00B4D8" } ],
                                [ { text: "M.2 #2 (PCH)", customWidth: 0.22, customColor: "#00B4D8" }, { text: "PCIe 4.0 x4", customWidth: 0.22 }, { text: "Occupied", customWidth: 0.29, customColor: "#00B4D8" }, { text: "WD SN850X 1TB", customWidth: 0.22, customColor: "#00B4D8" } ],
                                [ { text: "M.2 #3 (PCH)", customWidth: 0.22 }, { text: "PCIe 4.0 x4", customWidth: 0.22 }, { text: "Empty", customWidth: 0.29 }, { text: "Empty", customWidth: 0.22 } ],
                                [ { text: "M.2 #4 (PCH)", customWidth: 0.22 }, { text: "PCIe 4.0 x4", customWidth: 0.22 }, { text: "Empty", customWidth: 0.29 }, { text: "Empty", customWidth: 0.22 } ],
                                [ { text: "SATA #1", customWidth: 0.22, customColor: "#FFD600" }, { text: "SATA III", customWidth: 0.22 }, { text: "Occupied", customWidth: 0.29, customColor: "#FFD600" }, { text: "Seagate 8TB", customWidth: 0.22, customColor: "#FFD600" } ],
                                [ { text: "SATA #2", customWidth: 0.22 }, { text: "SATA III", customWidth: 0.22 }, { text: "Empty", customWidth: 0.29 }, { text: "Empty", customWidth: 0.22 } ]
                        ]
                        TableRow{
                            required property var modelData
                            required property int index
                            myColumns: modelData
                        }
                    }
                }
                SensorCard{
                    customMaximumWidth: 680
                    title: qsTr("Motherboard  Sensors  —  Live")
                    titleColor: "#FF3D3D"
                    InfoCardSection{
                        sectionTitle: qsTr("Temperatures")
                    }
                    Repeater{
                        model:[
                            { name:"VRM Temperature", value:"68°C", customColor:"#FF8C00", precent: 0.68},
                            { name:"Chipset / PCH Temp", value:"55°C", customColor:"#FFD600", precent: 0.55},
                            { name:"Motherboard Temperature", value:"58°C", customColor:"#FFD600", precent: 0.58},
                            { name:"CPU Socket", value:"62°C", customColor:"#FFD600", precent: 0.62}
                        ]
                        SensorBar{
                            required property var modelData
                            required property int index
                            title: modelData.name
                            value: modelData.value
                            sliderColor: modelData.customColor
                            precent: modelData.precent
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("Voltages")
                    }
                    Repeater{
                        model:[
                            { name:"+12V Rail", value:"12.024 V", customColor:"#00C853", precent: 0.93 },
                            { name:"+5V Rail", value:"5.008 V", customColor:"#00C853", precent: 0.96 },
                            { name:"+3.3V Rail", value:"3.312 V", customColor:"#00C853", precent: 0.94 },
                            { name:"VBAT (CMOS)", value:"3.086 V", customColor:"#00C853", precent: 0.92 },
                            { name:"3VSB", value:"3.289", customColor:"#FFD600", precent:0.98}
                        ]
                        SensorBar{
                            required property var modelData
                            required property int index
                            title: modelData.name
                            value: modelData.value
                            sliderColor: modelData.customColor
                            precent: modelData.precent
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("System Fans")
                    }
                    Repeater{
                        model:[
                            { name:"SysFan 1 (CHA)", value:"1240 RPM", customColor:"#00B4D8", precent: 0.56 },
                            { name:"SysFan 2 (CHA)", value:"1240 RPM", customColor:"#00B4D8", precent: 0.56 },
                            { name:"SysFan 3 (CHA)", value:"1240 RPM", customColor:"#00B4D8", precent: 0.56 },
                            { name:"SysFan 4 (CHA)", value:"1240 RPM", customColor:"#00B4D8", precent: 0.56 },
                            { name:"SysFan 5 (CHA)", value:"1240 RPM", customColor:"#00B4D8", precent: 0.56 },
                            { name:"SysFan 6 (CHA)", value:"1240 RPM", customColor:"#00B4D8", precent: 0.56 }
                        ]
                        SensorBar{
                            required property var modelData
                            required property int index
                            title: modelData.name
                            value: modelData.value
                            sliderColor: modelData.customColor
                            precent: modelData.precent
                        }
                    }
                }
            }
            ColumnLayout{
                Layout.fillWidth: true
                spacing: 20
                Layout.alignment: Qt.AlignTop
                InfoCard{
                    customMaximumWidth: 285
                    title: qsTr("Memory  Slots")
                    titleColor: "#9B59FF"
                    InfoCardSection{
                        sectionTitle: qsTr("Capacity")
                    }
                    Repeater{
                        model: [
                            {name:"Max Memory", value:"128GB"},
                            {name:"Phys. Slots", value:"4 DIMM"},
                            {name:"Occupied", value: "2 / 4"},
                            {name:"Type", value: "DDR5"}
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
                        sectionTitle: qsTr("Slots")
                    }
                    Column {
                        anchors.left: parent.left
                        anchors.right: parent.right
                        spacing: 12
                        topPadding: 10
                        Repeater{
                            model: [
                                {name: "A1", size:16, type: "DDR5-6400"},
                                {name: "B1", size:16, type: "DDR5-6400"},
                            ]
                            DIMMCard{
                                required property var modelData
                                required property int index
                                nameOfDIMM: modelData.name
                                sizeOfDIMM: modelData.size
                                typeOfDIMM: modelData.type
                            }
                        }
                    }
                }
                InfoCard{
                    customMaximumWidth: 285
                    title: qsTr("Board  Config")
                    titleColor: "#00C853"
                    InfoCardSection{
                        sectionTitle: qsTr("Form Factor")
                    }
                    Repeater{
                        model: [
                            { name: "Form", value: "ATX" },
                            { name: "Size", value: "305 x 244 mm"}
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
                        sectionTitle: qsTr("Interfaces")
                    }
                    Repeater{
                        model: [
                            { name: "USB 3.2 G2", value: "4x (Rear)" },
                            { name: "USB4 / TB4", value: "2x (40 Gb/s)"},
                            { name: "SATA III", value: "8x ports" },
                            { name: "LAN", value: "2.5 GbE"},
                            { name: "Wi-Fi", value: "6E (AX211)" },
                            { name: "Audio", value: "7.1  ALC4082"}
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
                        sectionTitle: qsTr("PCIe Config")
                    }
                    Repeater{
                        model: [
                            { name: "CPU Lanes", value: "24x PCIe 5.0" },
                            { name: "PCH Lanes", value: "20x PCIe 4.0"}
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
