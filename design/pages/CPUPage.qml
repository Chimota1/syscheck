    import QtQuick
    import QtQuick.Layouts
    import QtQuick.Controls
    import "qrc:/qt/qml/syscheck/design/component"

    Item {
        FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
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
            ColumnLayout{
                width: scrollView.availableWidth
                spacing: 20
                RowLayout{
                    Layout.fillWidth: true
                    spacing: 20
                    Layout.alignment: Qt.AlignTop
                    InfoCard{
                        title: qsTr("CPU  —  Identity")
                        titleColor: "#00B4D8"
                        customMaximumWidth: 465
                        InfoCardSection{
                            sectionTitle: qsTr("Processor")
                        }
                        Repeater{
                            model: [
                                { name: "Name", value: "AMD Ryzen 5 7535HS" },
                                { name: "Codename", value: "Rembrandt-R / Zen 3+" },
                                { name: "Socket", value: "FP7 (Mobile)" },
                                { name: "Lithography", value: "6 nm (TSMC N6)" },
                                { name: "TDP", value: "35 W (cTDP: 28-54W)" },
                                { name: "Topology", value: "6 Cores / 12 Threads" }
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
                            sectionTitle: qsTr("Clocks")
                        }
                        Repeater{
                            model: [
                                { name: "Base Clock", value: "3.3 GHz" },
                                { name: "Boost Clock", value: "4.55 GHz (max)" },
                                { name: "Current", value: "4.55 GHz" },
                                { name: "Bus Speed", value: "100.0 MHz  " }
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
                        title: qsTr("Core  Grid  —  Live  Per-Core")
                        titleColor: "#00C853"
                        customMaximumWidth: 560
                        GridLayout{
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.leftMargin: 15
                            anchors.rightMargin: 15
                            columns: 3
                            columnSpacing: 15
                            rowSpacing: 15
                            Repeater{
                                model: [
                                    { name: "Core 0", multiplier: "x45.5", speed: "4550 MHz", precent: 0.88 },
                                    { name: "Core 1", multiplier: "x44.0", speed: "4400 MHz", precent: 0.72 },
                                    { name: "Core 2", multiplier: "x42.5", speed: "4250 MHz", precent: 0.55 },
                                    { name: "Core 3", multiplier: "x40.0", speed: "4000 MHz", precent: 0.40 },
                                    { name: "Core 4", multiplier: "x20.0", speed: "2000 MHz", precent: 0.08 },
                                    { name: "Core 5", multiplier: "x8.0",  speed: "800 MHz",  precent: 0.03 }
                                ]
                                CoreCard{
                                    Layout.fillWidth: true
                                    required property int index
                                    required property var modelData
                                    coreName: modelData.name
                                    coreMultiplier: modelData.multiplier
                                    clockSpeed: modelData.speed
                                    precent: modelData.precent
                                }
                            }
                        }
                    }
                    SensorCard{
                        title: qsTr("Thermals  &  Power  —  Live")
                        titleColor: "#FF8C00"
                        customMaximumWidth: 435
                        InfoCardSection{
                            sectionTitle: qsTr("Temperature")
                        }
                        SensorBar{
                            property int temp: 49
                            title: qsTr("Package Temp")
                            value: temp + "°C"
                            precent: temp / 100.0
                            sliderColor: temp < 60 ? "#00B4D8" :
                                            temp <= 75 ? "#FF8C00" :
                                            "#FF3D3D"
                        }
                        Repeater{
                            property int temp: 49
                            model: [
                                {temp:81},
                                {temp:50},
                                {temp:81},
                                {temp:73},
                                {temp:58},
                                {temp:67}
                            ]
                            Row{
                                id:powerContent
                                required property int index
                                required property var modelData
                                width: parent.width
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.leftMargin: 10
                                anchors.rightMargin: 30
                                spacing: 100
                                Text{
                                    text: "Core " + index
                                    font.pixelSize: 12
                                    font.family: jetbrainsmono.name
                                    color: "#7A7A8A"
                                }
                                Row{
                                    width: parent.width
                                    spacing: 10
                                    Text {
                                        text: modelData.temp + "°C"
                                        font.pixelSize: 12
                                        font.family: jetbrainsmono.name
                                        color: "#7A7A8A"
                                    }
                                    BaseBar{
                                        width: 220
                                        precent: modelData.temp / 100.0
                                        sliderColor: modelData.temp < 60 ? "#00B4D8" :
                                                        modelData.temp <= 75 ? "#FF8C00" :
                                                        "#FF3D3D"
                                    }
                                }
                            }
                        }
                        InfoCardSection{
                            sectionTitle: qsTr("Power & Voltage")
                        }
                        Repeater{
                            model: [
                                {name:"Package Power", value:54, percent:0.8, color:"#FF3D3D", typeOfValue:" W"},
                                {name:"Core Voltage", value:1.262, percent:0.67, color:"#FFD600", typeOfValue: " V"}
                            ]
                            SensorBar{
                                required property int index
                                required property var modelData
                                title: modelData.name
                                value: modelData.value + modelData.typeOfValue
                                sliderColor: modelData.color
                                precent: modelData.percent
                            }
                        }
                    }
                }
                RowLayout{
                    Layout.fillWidth: true
                    spacing: 20
                    InfoCard{
                        title: qsTr("Cache  Hierarchy")
                        titleColor: "#FFD600"
                        customMaximumWidth: 390
                        InfoCardSection{
                            sectionTitle: qsTr("Structure")
                        }
                        Repeater{
                            model: [
                                {name: "L1 Data", value: "6 x 32 KB (8-way SA)"},
                                {name: "L1 Inst.", value: "6 x 32 KB (8-way SA)"},
                                {name: "L2", value: "6 x 512 KB (8-way SA)"},
                                {name: "L3 (LLC)", value: "16 MB shared (16-way SA)"}
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
                            sectionTitle: qsTr("Write Policy")
                        }
                        Repeater{
                            model: [
                                {name: "L1", value: "Write-back"},
                                {name: "L2.", value: "Write-back"},
                                {name: "L3", value: "Write-back (shared)"},
                                {name: "Prefetcher", value: "HW + Adaptive L2"}
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
                        title: qsTr("Instruction  Sets  —  Supported  Features")
                        titleColor: "#9B59FF"
                        customMaximumWidth: 895
                        InfoCardSection{
                            sectionTitle: qsTr("Supported  (bright)   /   Not Supported  (dim)")
                        }
                        Item {
                            width: parent.width
                            height: 10
                        }
                        GridLayout{
                            columns: 10
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.leftMargin: 15
                            anchors.rightMargin: 15
                            columnSpacing: 8
                            rowSpacing: 20
                            Repeater{
                                model: [
                                    { title: "MMX",     isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "SSE",     isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "SSE2",    isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "SSE3",    isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "SSSE3",   isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "SSE4.1",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "SSE4.2",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "AVX",     isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "AVX2",    isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "AVX-512", isSupport: false, colorOfBlock: "#00C853" },
                                    { title: "FMA3",    isSupport: true,  colorOfBlock: "#00C853" },
                                    { title: "FMA4",    isSupport: false, colorOfBlock: "#00C853" },
                                    { title: "AES-NI",  isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "SHA",     isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "BMI1",    isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "BMI2",    isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "POPCNT",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "LZCNT",   isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "MOVBE",   isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "F16C",    isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "AMD-V",   isSupport: true,  colorOfBlock: "#9C27B0" },
                                    { title: "AMD-Vi",  isSupport: true,  colorOfBlock: "#9C27B0" },
                                    { title: "SVM",     isSupport: true,  colorOfBlock: "#9C27B0" },
                                    { title: "RDRAND",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "RDSEED",  isSupport: true,  colorOfBlock: "#00B4D8" },
                                    { title: "CLMUL",   isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "VAES",    isSupport: true,  colorOfBlock: "#FFD600" },
                                    { title: "XOP",     isSupport: false, colorOfBlock: "#00B4D8" },
                                    { title: "TBM",     isSupport: false, colorOfBlock: "#00B4D8" },
                                    { title: "RDTSCP",  isSupport: true,  colorOfBlock: "#00B4D8" }
                                ]
                                InstructionCard{
                                    required property int index
                                    required property var modelData
                                    title: modelData.title
                                    isSupport: modelData.isSupport
                                    colorOfBlock: modelData.colorOfBlock
                                }
                            }
                            InfoRow{
                                nameOfBlock: qsTr("26 / 30  instruction sets supported")
                                colorOfBlock: "transparent"
                            }
                        }
                    }
                }
            }
        }
    }
