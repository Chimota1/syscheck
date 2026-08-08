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
                    title: qsTr("OS  —  Version Details")
                    titleColor: "#00B4D8"
                    InfoCardSection{
                        sectionTitle: qsTr("General")
                    }
                    Repeater{
                        model: [
                            { name: "OS Name", value: "Intel Core i9-14900K" },
                            { name: "Build", value: "Raptor Lake Refresh" },
                            { name: "Edition", value: "LGA1700" },
                            { name: "Architecture", value: "Intel 7" },
                            { name: "Kernel Version", value: "NT  10.0.22631.3447"}
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
                        sectionTitle: qsTr("Localization")
                    }
                    Repeater{
                        model: [
                            { name: "System Language", value: "Ukrainian  (uk-UA)" },
                            { name: "UI Language", value: "English  (en-US)" },
                            { name: "Time Zone", value: "UTC+3  (Kyiv)" }
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
                        sectionTitle: qsTr("Paths")
                    }
                    Repeater{
                        model: [
                            { name: "Installation Path", value: "C:/Windows" },
                            { name: "System Drive", value: "C:" },
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
                    title: qsTr("Boot  &  System  State")
                    titleColor: "#FFD600"
                    InfoCardSection{
                        sectionTitle: qsTr("Boot")
                    }
                    Repeater{
                        model: [
                            { name: "Boot Method", value: "Intel Core i9-14900K" },
                            { name: "Secure Boot", value: "Raptor Lake Refresh" },
                            { name: "Boot Device", value: "LGA1700" },
                            { name: "Fast Startup", value: "Intel 7" },
                            { name: "Last Boot Time", value: "NT  10.0.22631.3447"}
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
                        sectionTitle: qsTr("Session")
                    }
                    Repeater{
                        model: [
                            { name: "Uptime", value: "Ukrainian  (uk-UA)" },
                            { name: "Install Date", value: "English  (en-US)" },
                            { name: "Last Update", value: "UTC+3  (Kyiv)" }
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
                        sectionTitle: qsTr("Power State")
                    }
                    Repeater{
                        model: [
                            { name: "Power Plan", value: "C:/Windows" },
                            { name: "Hibernate", value: "C:" },
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
                    title: qsTr("Security  &  Virtualization")
                    titleColor: "#FF3D3D"
                    InfoCardSection{
                        sectionTitle: qsTr("Security")
                    }
                    Repeater{
                        model: [
                            { name: "Windows Defender", value: "Intel Core i9-14900K" },
                            { name: "Firewall", value: "Raptor Lake Refresh" },
                            { name: "UAC", value: "LGA1700" },
                            { name: "TPM", value: "Intel 7" },
                            { name: "BitLocker", value: "NT  10.0.22631.3447"}
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
                        sectionTitle: qsTr("Virtualization")
                    }
                    Repeater{
                        model: [
                            { name: "Hyper-V", value: "Ukrainian  (uk-UA)" },
                            { name: "VBS", value: "English  (en-US)" },
                            { name: "Antivirus", value: "UTC+3  (Kyiv)" }
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
                        sectionTitle: qsTr("Integrity")
                    }
                    Repeater{
                        model: [
                            { name: "Code Integrity", value: "C:/Windows" },
                            { name: "HVCI", value: "C:" },
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
                    title: qsTr("Memory  &  Resources")
                    titleColor: "#9B59FF"
                    InfoCardSection{
                        sectionTitle: qsTr("Virtual Memory")
                    }
                    Repeater{
                        model: [
                            { name: "Pagefile Location", value: "Intel Core i9-14900K" },
                            { name: "Pagefile Size", value: "Raptor Lake Refresh" },
                            { name: "Min Pagefile", value: "LGA1700" },
                            { name: "Max Pagefile", value: "Intel 7" },
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
                        sectionTitle: qsTr("RunTime")
                    }
                    Repeater{
                        model: [
                            { name: "Current Processes", value: "Intel Core i9-14900K" },
                            { name: "Current Threads", value: "Raptor Lake Refresh" },
                            { name: "Handles", value: "LGA1700" },
                            { name: "Services Running", value: "Intel 7" },
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
                    title: qsTr("Components  &  Runtime")
                    titleColor: "#00C853"
                    InfoCardSection{
                        sectionTitle: qsTr("Graphics")
                    }
                    Repeater{
                        model: [
                            { name: "DirectX", value: "Intel Core i9-14900K" },
                            { name: "Vulkan", value: "Raptor Lake Refresh" },
                            { name: "OpenGL", value: "LGA1700" },
                            { name: "OpenCL", value: "Intel 7" },
                            { name: "CUDA", value: "NT  10.0.22631.3447"},
                            { name: "Shader Model", value: "6.7"}
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
                        sectionTitle: qsTr("Runtime")
                    }
                    Repeater{
                        model: [
                            { name: "PowerShell", value: "Intel Core i9-14900K" },
                            { name: ".NET Framework", value: "Raptor Lake Refresh" },
                            { name: "Visual C++ Redist.", value: "LGA1700" },
                            { name: "WebView2", value: "Intel 7" },
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
                    title: qsTr("Environment  &  Paths")
                    titleColor: "#FF8C00"
                    InfoCardSection{
                        sectionTitle: qsTr("Key Variables")
                    }
                    Repeater{
                        model: [
                            { name: "SystemRoot", value: "C:/Windows", underline: true },
                            { name: "ProgramFiles", value: "C:/Program Files", underline: true },
                            { name: "ProgramFiles(x86)", value: "C:/Program Files(x86)", underline: true },
                            { name: "TEMP", value: "C:/Users/Admin/AppData/Temp", underline: true },
                            { name: "USERPROFILE", value: "C:/Users/Administrator", underline: true},
                            { name: "ComSpec", value: "C:/Windows/System32/cmd.exe", underline: true}
                        ]
                        InfoRow{
                            required property var modelData
                            required property int index
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                            customUnderline: modelData.underline
                        }
                    }
                    InfoCardSection{
                        sectionTitle: qsTr("System Info")
                    }
                    Repeater{
                        model: [
                            { name: "Computer Name", value: "Intel Core i9-14900K" },
                            { name: "Username", value: "Raptor Lake Refresh" },
                            { name: "Domain", value: "LGA1700" },
                            { name: "Product ID", value: "Intel 7" },
                            { name: "PATH Entries", value: "NT  10.0.22631.3447"},
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
