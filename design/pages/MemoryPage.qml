import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/qt/qml/syscheck/design/component"

Item {
    anchors.fill: parent

    ScrollView {
        id: scrollView
        width: parent.width
        height: parent.height
        leftPadding: 10
        topPadding: 6
        contentHeight: main.implicitHeight
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical: ScrollBar {
            background: Rectangle {
                color: "#0F1015"
                radius: 4
            }

            contentItem: Rectangle {
                radius: 4
                color: "#404552"
            }
        }

        ColumnLayout {
            id: main
            width: scrollView.availableWidth
            spacing: 18

            RowLayout {
                Layout.fillWidth: true
                spacing: 18

                ColumnLayout {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignTop
                    spacing: 18

                    SensorCard {
                        Layout.fillWidth: true
                        Layout.fillHeight: false
                        Layout.preferredHeight: 260
                        customMaximumWidth: 2000
                        title: qsTr(" Memory  —  Live  Usage")
                        titleColor: "#00B4D8"

                        SensorBar {
                            title: qsTr("Used")
                            value: qsTr("7.2 GB  /  16 GB")
                            precent: 0.45
                            sliderColor: "#9B59FF"
                        }
                        SensorBar {
                            title: qsTr("Page File")
                            value: qsTr("1.8 / 10.0 GB  (18%)")
                            precent: 0.18
                            sliderColor: "#FFD600"
                        }
                        Repeater {
                            model: [
                                { name: qsTr("Total"), value: qsTr("16 GB"), color: "#E8EAF0" },
                                { name: qsTr("Available"), value: qsTr("8.8 GB"), color: "#00C853" },
                                { name: qsTr("Load"), value: qsTr("45%"), color: "#9B59FF" }
                            ]
                            InfoRow {
                                required property int index
                                required property var modelData
                                nameOfBlock: modelData.name
                                valueOfBlock: modelData.value
                                valueColor: modelData.color
                                colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                            }
                        }
                    }

                    TableCard {
                        Layout.fillWidth: true
                        Layout.fillHeight: false
                        customMaximumWidth: 2000
                        title: qsTr(" Timings  —  Current  Active")
                        titleColor: "#FFD600"

                        TableHeader {
                            property var headerContent: [
                                { text: "Parameter", colWidth: 0.44 },
                                { text: "Value", colWidth: 0.14 },
                                { text: "Description", colWidth: 0.42 }
                            ]
                            myColumns: headerContent
                        }

                        Repeater {
                            model: [
                                [ { text: "CAS Latency (CL)", customWidth: 0.44 }, { text: "16", customWidth: 0.14 }, { text: "Column Address Strobe delay", customWidth: 0.42, customColor: "#5F6472" } ],
                                [ { text: "RAS to CAS (tRCD)", customWidth: 0.44 }, { text: "18", customWidth: 0.14 }, { text: "Row to Column delay", customWidth: 0.42, customColor: "#5F6472" } ],
                                [ { text: "RAS Precharge (tRP)", customWidth: 0.44 }, { text: "18", customWidth: 0.14 }, { text: "Row Precharge time", customWidth: 0.42, customColor: "#5F6472" } ],
                                [ { text: "Cycle Time (tRAS)", customWidth: 0.44 }, { text: "38", customWidth: 0.14 }, { text: "Active to Precharge delay", customWidth: 0.42, customColor: "#5F6472" } ],
                                [ { text: "Bank Cycle (tRC)", customWidth: 0.44 }, { text: "56", customWidth: 0.14 }, { text: "Row Cycle time", customWidth: 0.42, customColor: "#5F6472" } ],
                                [ { text: "Command Rate (CR)", customWidth: 0.44 }, { text: "1T", customWidth: 0.14 }, { text: "Command Rate mode", customWidth: 0.42, customColor: "#5F6472" } ],
                                [ { text: "tWR", customWidth: 0.44 }, { text: "18", customWidth: 0.14 }, { text: "Write Recovery time", customWidth: 0.42, customColor: "#5F6472" } ]
                            ]

                            TableRow {
                                required property var modelData
                                myColumns: modelData
                            }
                        }
                    }
                }

                ColumnLayout {
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignTop
                    spacing: 18

                    InfoCard {
                        Layout.fillWidth: true
                        Layout.fillHeight: false
                        Layout.preferredHeight: 260
                        customMaximumWidth: 2000
                        title: qsTr(" General Specs  —  Controller")
                        titleColor: "#00C853"

                        Repeater {
                            model: [
                                { name: qsTr("Type"), value: qsTr("DDR4  SDRAM") },
                                { name: qsTr("Channels"), value: qsTr("Dual  Channel"), color: "#00C853" },
                                { name: qsTr("DRAM Freq."), value: qsTr("1600 MHz  (DDR4-3200)") },
                                { name: qsTr("Uncore Freq."), value: qsTr("1200 MHz  (SoC)") },
                                { name: qsTr("NB Frequency"), value: qsTr("1600 MHz") },
                                { name: qsTr("Voltage"), value: qsTr("1.350  V"), color: "#FFD600" }
                            ]
                            InfoRow {
                                required property int index
                                required property var modelData
                                nameOfBlock: modelData.name
                                valueOfBlock: modelData.value
                                valueColor: modelData.color ? modelData.color : "#E8EAF0"
                                colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                            }
                        }
                    }

                    TableCard {
                        Layout.fillWidth: true
                        Layout.fillHeight: false
                        customMaximumWidth: 2000
                        title: qsTr(" XMP  /  EXPO  Profiles")
                        titleColor: "#FF9800"

                        TableHeader {
                            property var headerContent: [
                                { text: "Profile", colWidth: 0.30 },
                                { text: "Frequency", colWidth: 0.20 },
                                { text: "Voltage", colWidth: 0.14 },
                                { text: "CL-tRCD-tRP-tRAS", colWidth: 0.26 },
                                { text: "", colWidth: 0.10 }
                            ]
                            myColumns: headerContent
                        }

                        Repeater {
                            model: [
                                [
                                    { text: "XMP 2.0  Profile 1", customWidth: 0.30, customColor: "#FF9800" },
                                    { text: "3200 MHz", customWidth: 0.20 },
                                    { text: "1.35 V", customWidth: 0.14, customColor: "#FFD600" },
                                    { text: "16-18-18-38", customWidth: 0.26 },
                                    { text: "active", customWidth: 0.10, customColor: "#FF9800" }
                                ],
                                [
                                    { text: "XMP 2.0  Profile 2", customWidth: 0.30, customColor: "#6F7482" },
                                    { text: "2933 MHz", customWidth: 0.20, customColor: "#6F7482" },
                                    { text: "1.38 V", customWidth: 0.14, customColor: "#6F7482" },
                                    { text: "16-16-16-36", customWidth: 0.26, customColor: "#6F7482" },
                                    { text: "", customWidth: 0.10 }
                                ],
                                [
                                    { text: "JEDEC  (Default)", customWidth: 0.30, customColor: "#6F7482" },
                                    { text: "2133 MHz", customWidth: 0.20, customColor: "#6F7482" },
                                    { text: "1.20 V", customWidth: 0.14, customColor: "#6F7482" },
                                    { text: "15-15-15-36", customWidth: 0.26, customColor: "#6F7482" },
                                    { text: "", customWidth: 0.10 }
                                ]
                            ]

                            TableRow {
                                required property var modelData
                                myColumns: modelData
                            }
                        }
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: 18

                SPDCard {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    slotIndex: 0
                }

                SPDCard {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    slotIndex: 1
                }

                InfoCard {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    customMaximumWidth: 2000
                    title: qsTr(" Bandwidth  &  Performance")
                    titleColor: "#00C853"

                    InfoCardSection {
                        sectionTitle: qsTr("Theoretical")
                    }
                    Repeater {
                        model: [
                            { name: qsTr("Peak Bandwidth"), value: qsTr("51.2 GB/s") },
                            { name: qsTr("Per Channel"), value: qsTr("25.6 GB/s") },
                            { name: qsTr("Bus Width"), value: qsTr("2x 64-bit") }
                        ]
                        InfoRow {
                            required property int index
                            required property var modelData
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }

                    InfoCardSection {
                        sectionTitle: qsTr("Measured")
                    }
                    SensorBar {
                        title: qsTr("Read Speed")
                        value: qsTr("42.8 GB/s")
                        precent: 0.84
                        sliderColor: "#00E676"
                    }
                    SensorBar {
                        title: qsTr("Write Speed")
                        value: qsTr("38.4 GB/s")
                        precent: 0.75
                        sliderColor: "#00D4FF"
                    }
                    SensorBar {
                        title: qsTr("Copy Speed")
                        value: qsTr("40.1 GB/s")
                        precent: 0.78
                        sliderColor: "#9B59FF"
                    }

                    InfoCardSection {
                        sectionTitle: qsTr("Latency")
                    }
                    Repeater {
                        model: [
                            { name: qsTr("Memory Latency"), value: qsTr("72.4 ns"), color: "#FFD600" },
                            { name: qsTr("L3 Cache Latency"), value: qsTr("12.1 ns"), color: "#00C853" }
                        ]
                        InfoRow {
                            required property int index
                            required property var modelData
                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            valueColor: modelData.color
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }
                }
            }
        }
    }
}
