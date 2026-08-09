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
                    title: qsTr("GPU  —  Identity")
                    titleColor: "#00C853"
                    customMaximumWidth: 485
                    InfoCardSection{
                        sectionTitle: qsTr("Chip")
                    }
                    Repeater{
                        model: [
                            { name: "Name", value: "NVIDIA RTX 4060 Laptop" },
                            { name: "Vendor", value: "NVIDIA Corporation" },
                            { name: "Codename", value: "AD107 / Ada Lovelace" },
                            { name: "Lithography", value: "4 nm (TSMC N4)" },
                            { name: "Bus Interface", value: "PCIe 4.0 x8" },
                            { name: "Release Date", value: "2023" },
                            { name: "TGP", value: "80 W (cTGP: 60-115W)" }
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
                    title: qsTr("VRAM  —  Video Memory")
                    titleColor: "#00B4D8"
                    customMaximumWidth: 485
                    InfoCardSection{
                        sectionTitle: qsTr("Memory")
                    }
                    Repeater{
                        model:[
                            { name: "Memory Size", value: "8192 MB  (8 GB)" },
                            { name: "Memory Type", value: "GDDR6" },
                            { name: "Bus Width", value: "128-bit" },
                            { name: "Bandwidth", value: "256.0 GB/s" },
                            { name: "Memory Clock", value: "2000 MHz  (16 Gbps eff.)" }
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

                SensorCard{
                    title: qsTr("Thermals  &  Power  —  Live")
                    titleColor: "#FF8C00"
                    customMaximumWidth: 485
                    InfoCardSection{
                        sectionTitle: qsTr("Temperatures")
                    }
                    SensorBar{
                        property int temp: 67
                        title: qsTr("GPU Core Temp")
                        value: "67°C"
                        precent: 0.67
                        sliderColor: temp < 60 ? "#00B4D8" :
                                      temp <= 75 ? "#FF8C00" :
                                        "#FF3D3D"
                    }
                    Repeater{
                        model: [
                            { name:"Hot Spot Temp", value:"74°C", color:"#00C853", temp:0.74},
                            { name:"VRAM Temp", value:"70°C", color:"#FFD600", temp:0.7}
                        ]
                        SensorBar{
                            required property int index
                            required property var modelData
                            title: modelData.name
                            value: modelData.value
                            sliderColor: modelData.color
                            precent: modelData.temp
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("Power & Fan")
                    }
                    Repeater{
                        model: [
                            { name:"Board Power Draw", value:"80 W", color:"#FF3D3D", temp:0.8},
                            { name:"Fan Speed", value:"58% / 2100 RPM", color:"#00B4D8", temp:0.58}
                        ]
                        SensorBar{
                            required property int index
                            required property var modelData
                            title: modelData.name
                            value: modelData.value
                            sliderColor: modelData.color
                            precent: modelData.temp
                        }
                    }
                }
            }
                ColumnLayout{
                    Layout.fillWidth: true
                    spacing: 20
                    Layout.alignment: Qt.AlignTop
                    RowLayout{
                        Layout.fillWidth: true
                        spacing: 20
                        SensorCard{
                            title: qsTr("Clocks  &  Utilization  —  Live")
                            titleColor: "#00B4D8"
                            customMaximumWidth: 580
                            Row{
                                width: parent.width
                                spacing: 5
                                Repeater{
                                    model: [
                                        { title: "Core Clock", value: "2450 MHz", valueColor: "#00C853", precent: 0.85 },
                                        { title: "Mem Clock",  value: "2000 MHz", valueColor: "#00B4D8", precent: 0.65 },
                                        { title: "Core Load",  value: "88%",      valueColor: "#9B59FF", precent: 0.88 }
                                    ]
                                    CircleBar{
                                        required property int index
                                        required property var modelData
                                        title: modelData.title
                                        value: modelData.value
                                        valueColor: modelData.valueColor
                                        precent: modelData.precent
                                    }
                                }
                            }
                            InfoCardSection{
                                sectionTitle: qsTr("Usage")
                            }
                            Repeater{
                                model: [
                                    { title: "VRAM Used", value: "4.5 / 8.0 GB", precent: 0.56, sliderColor: "#9B59FF" },
                                    { title: "Video Encode", value: "0%", precent: 0.00, sliderColor: "#FFD600" },
                                    { title: "Video Decode", value: "12%", precent: 0.12, sliderColor: "#00C853" },
                                    { title: "Copy Engine", value: "8%", precent: 0.08, sliderColor: "#00B4D8" },
                                    { title: "3D Engine", value: "88%", precent: 0.88, sliderColor: "#00C853" },
                                    { title: "Memory Controller", value: "45%", precent: 0.45, sliderColor: "#FF8C00" }
                                ]
                                SensorBar{
                                    required property int index
                                    required property var modelData
                                    title: modelData.title
                                    value: modelData.value
                                    sliderColor: modelData.sliderColor
                                    precent: modelData.precent
                                }
                            }
                        }
                        InfoCard{
                            title: qsTr("Driver  &  Software")
                            titleColor: "#FFD600"
                            customMaximumWidth: 375
                            InfoCardSection{
                                sectionTitle: qsTr("Driver")
                            }
                            Repeater{
                                model: [
                                    { name: "Driver Version", value: "551.86  WHQL"},
                                    { name: "Driver Date", value: "2024-02-28" },
                                    { name: "WDDM", value: "3.1" },
                                    { name: "OpenGL Driver", value: "4.6.0.0" }
                                ]
                                InfoRow{
                                    required property int index
                                    required property var modelData
                                    nameOfBlock: modelData.name
                                    valueOfBlock: modelData.value
                                    colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                                }
                            }
                            InfoCardSection{
                                sectionTitle: qsTr("Compute")
                            }
                            Repeater{
                                model: [
                                    { name: "CUDA Version", value: "12.3"},
                                    { name: "NVENC API", value: "12.2" },
                                    { name: "NVDEC API", value: "11.1" },
                                    { name: "Optical Flow", value: "4th Gen" }
                                ]
                                InfoRow{
                                    required property int index
                                    required property var modelData
                                    nameOfBlock: modelData.name
                                    valueOfBlock: modelData.value
                                    colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                                }
                            }
                            InfoCardSection{
                                sectionTitle: qsTr("Display Output")
                            }
                            Repeater{
                                model: [
                                    { name: "Connected", value: "1 / 4 outputs"},
                                    { name: "Resolution",   value: "2560 x 1600" },
                                    { name: "Refresh Rate", value: "165 Hz", valueColor: "#00B4D8" },
                                    { name: "Color Format", value: "10-bit RGB" }
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
                    InfoCard{
                        title: qsTr("Features  &  API  Support")
                        titleColor: "#9B59FF"
                        customMaximumWidth: 970
                        InfoCardSection{
                            sectionTitle: qsTr("Supported  (bright)   /   Not Supported  (dim)")
                        }
                        Item {
                            width: parent.width
                            height: 10
                        }
                        GridLayout{
                            id:grid
                            columns: 10
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.leftMargin: 15
                            anchors.rightMargin: 15
                            columnSpacing: 8
                            rowSpacing: 20
                            Repeater{
                                model: [
                                    { title: "DirectX 12",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "DX12 Ult.",   isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "Vulkan 1.3",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "OpenGL 4.6",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "OpenCL 3.0",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "CUDA 8.9",    isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "Shader 6.7",  isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "Ray Tracing", isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "Mesh Shader", isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "VRS Tier 2",  isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "DLSS 3.5",    isSupport: true,  colorOfBlock: "#9B59FF" },
                                    { title: "DLSS SR",     isSupport: true,  colorOfBlock: "#9B59FF" },
                                    { title: "DLSS FG",     isSupport: true,  colorOfBlock: "#9B59FF" },
                                    { title: "Reflex 2.0",  isSupport: true,  colorOfBlock: "#9B59FF" },
                                    { title: "FSR 3.0",     isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "AV1 Encode",  isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "AV1 Decode",  isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "HEVC Enc.",   isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "RTX HDR",     isSupport: true,  colorOfBlock: "#FF8C00" },
                                    { title: "NVLink",      isSupport: false, colorOfBlock: "#4A4F60" },
                                    { title: "SLI",         isSupport: false, colorOfBlock: "#4A4F60" },
                                    { title: "Stereo 3D",   isSupport: false, colorOfBlock: "#4A4F60" },
                                    { title: "G-Sync",      isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "HDCP 2.3",    isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "DP 1.4a",     isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "HDMI 2.1",    isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "Resiz. BAR",  isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "AV-sync",     isSupport: true,  colorOfBlock: "#00B4D8" }
                                ]
                                InstructionCard{
                                    required property int index
                                    required property var modelData
                                    title: modelData.title
                                    isSupport: modelData.isSupport
                                    colorOfBlock: modelData.colorOfBlock
                                }
                            }
                        }
                    InfoRow{
                        nameOfBlock: qsTr("25 / 28  instruction sets supported")
                        colorOfBlock: "transparent"
                    }
                }
            }
        }
    }
}
