import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/qt/qml/syscheck/design/component"

Item {
    id: page
    anchors.fill: parent

    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}

    property int currentDrive: 0
    readonly property var drive: drives[currentDrive]

    property var smartColumns: [
        { text: "ID", colWidth: 0.08 },
        { text: "Attribute Name", colWidth: 0.38 },
        { text: "Value", colWidth: 0.12 },
        { text: "Worst", colWidth: 0.12 },
        { text: "Raw", colWidth: 0.18 },
        { text: "Status", colWidth: 0.12 }
    ]

    property var drives: [
        {
            tabTitle: "Samsung 990 Pro  2 TB",
            bus: "NVMe  PCIe 4.0",

            model: "Samsung 990 Pro",
            vendor: "Samsung Electronics",
            interfaceName: "NVMe  PCIe 4.0 x4",
            formFactor: "M.2  2280",
            capacity: "2048 GB  (2 TB)",
            firmware: "4B2QJXD7",
            serial: "S672NX0T123456",

            health: "GOOD",
            healthColor: "#00C853",
            healthNote: "No critical errors detected",

            driveTemp: 42,
            driveTempPercent: 0.42,
            controllerTemp: 48,
            controllerTempPercent: 0.48,
            powerOn: "4821 h",
            powerCycles: "312",

            wearTitle: "SSD  Wear  &  Endurance",
            wearSection: "Writes",
            wearRows: [
                { name: "Total Host Writes", value: "12.4 TB" },
                { name: "TBW Rated", value: "1200 TB" },
                { name: "Remaining Life", value: "98.9%", color: "#00C853" }
            ],
            wearBarVisible: true,
            wearBarPercent: 0.011,
            wearBarValue: "1.1% used",
            tailRows: [
                { name: "NAND Type", value: "TLC  (3D V-NAND)" },
                { name: "Reallocated Sectors", value: "0" }
            ],

            partitions: [
                { name: "C:  (System)", fs: "NTFS", used: "312 GB", free: "1.69 TB", total: "2.00 TB",
                  percent: 0.15, percentText: "15%", color: "#00D4FF" },
                { name: "Recovery", fs: "NTFS", used: "0.5 GB", free: "0.0 GB", total: "0.5 GB",
                  percent: 1.00, percentText: "100%", color: "#FF8C00" }
            ],

            read: "3,820",
            write: "2,910",
            load: "12%",
            history: [
                { read: 1800, write: 2700 },
                { read: 2415, write: 2636 },
                { read: 2947, write: 2448 },
                { read: 3324, write: 2153 },
                { read: 3493, write: 1776 },
                { read: 3433, write: 1350 },
                { read: 3152, write: 1489 },
                { read: 2687, write: 1903 },
                { read: 2102, write: 2257 },
                { read: 2124, write: 2520 },
                { read: 2706, write: 2670 },
                { read: 3165, write: 2693 },
                { read: 3439, write: 2589 },
                { read: 3491, write: 2365 },
                { read: 3314, write: 2040 },
                { read: 2931, write: 1644 },
                { read: 2395, write: 1210 },
                { read: 1822, write: 1625 },
                { read: 2436, write: 2024 },
                { read: 2964, write: 2352 },
                { read: 3333, write: 2581 },
                { read: 3495, write: 2691 },
                { read: 3427, write: 2674 },
                { read: 3138, write: 2529 }
            ],

            smartLeft: [
                [ { text: "01", customWidth: 0.08, customColor: "#6F7482" }, { text: "Raw Read Error Rate", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "05", customWidth: 0.08, customColor: "#6F7482" }, { text: "Reallocated Sectors", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "09", customWidth: 0.08, customColor: "#6F7482" }, { text: "Power-On Hours", customWidth: 0.38 }, { text: "097", customWidth: 0.12 }, { text: "097", customWidth: 0.12 }, { text: "4821", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "0C", customWidth: 0.08, customColor: "#6F7482" }, { text: "Power Cycle Count", customWidth: 0.38 }, { text: "099", customWidth: 0.12 }, { text: "099", customWidth: 0.12 }, { text: "312", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "B4", customWidth: 0.08, customColor: "#6F7482" }, { text: "End-to-End Error", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ]
            ],
            smartRight: [
                [ { text: "BB", customWidth: 0.08, customColor: "#6F7482" }, { text: "Uncorrectable Errors", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "BE", customWidth: 0.08, customColor: "#6F7482" }, { text: "Airflow Temperature", customWidth: 0.38 }, { text: "065", customWidth: 0.12 }, { text: "058", customWidth: 0.12 }, { text: "42", customWidth: 0.18 }, { text: "WARN", customWidth: 0.12, customColor: "#FFD600" } ],
                [ { text: "C3", customWidth: 0.08, customColor: "#6F7482" }, { text: "ECC Error Rate", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "F1", customWidth: 0.08, customColor: "#6F7482" }, { text: "Total LBAs Written", customWidth: 0.38 }, { text: "099", customWidth: 0.12 }, { text: "099", customWidth: 0.12 }, { text: "12.4 TB", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "F2", customWidth: 0.08, customColor: "#6F7482" }, { text: "Total LBAs Read", customWidth: 0.38 }, { text: "099", customWidth: 0.12 }, { text: "099", customWidth: 0.12 }, { text: "28.1 TB", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ]
            ]
        },
        {
            tabTitle: "Seagate HDD  1 TB",
            bus: "SATA III",

            model: "Seagate BarraCuda 1TB",
            vendor: "Seagate Technology",
            interfaceName: "SATA III  (6 Gb/s)",
            formFactor: '2.5"  7 mm',
            capacity: "1000 GB  (1 TB)",
            firmware: "0001",
            serial: "WXY12345",

            health: "GOOD",
            healthColor: "#00C853",
            healthNote: "No critical errors detected",

            driveTemp: 38,
            driveTempPercent: 0.38,
            controllerTemp: 41,
            controllerTempPercent: 0.41,
            powerOn: "12044 h",
            powerCycles: "1204",

            wearTitle: "HDD  Wear  &  Endurance",
            wearSection: "Lifetime",
            wearRows: [
                { name: "Power-On Hours", value: "12044 h" },
                { name: "Start/Stop Count", value: "1204" },
                { name: "Load/Unload Cycles", value: "8640" }
            ],
            wearBarVisible: false,
            wearBarPercent: 0,
            wearBarValue: "",
            tailRows: [
                { name: "Reallocated Sectors", value: "0" },
                { name: "Seek Error Rate", value: "0.001%", color: "#FFD600" },
                { name: "Spin Retry Count", value: "0" }
            ],

            partitions: [
                { name: "D:  (Data)", fs: "NTFS", used: "640 GB", free: "360 GB", total: "1.00 TB",
                  percent: 0.64, percentText: "64%", color: "#00D4FF" },
                { name: "Backup", fs: "NTFS", used: "120 GB", free: "0.0 GB", total: "120 GB",
                  percent: 1.00, percentText: "100%", color: "#FFD600" }
            ],

            read: "182",
            write: "96",
            load: "4%",
            history: [
                { read: 2687, write: 1903 },
                { read: 2102, write: 2257 },
                { read: 2124, write: 2520 },
                { read: 2706, write: 2670 },
                { read: 3165, write: 2693 },
                { read: 3439, write: 2589 },
                { read: 3491, write: 2365 },
                { read: 3314, write: 2040 },
                { read: 2931, write: 1644 },
                { read: 2395, write: 1210 },
                { read: 1822, write: 1625 },
                { read: 2436, write: 2024 },
                { read: 2964, write: 2352 },
                { read: 3333, write: 2581 },
                { read: 3495, write: 2691 },
                { read: 3427, write: 2674 },
                { read: 3138, write: 2529 },
                { read: 2668, write: 2271 },
                { read: 2080, write: 1921 },
                { read: 2146, write: 1508 },
                { read: 2725, write: 1331 },
                { read: 3178, write: 1758 },
                { read: 3445, write: 2138 },
                { read: 3489, write: 2437 }
            ],

            smartLeft: [
                [ { text: "01", customWidth: 0.08, customColor: "#6F7482" }, { text: "Raw Read Error Rate", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "03", customWidth: 0.08, customColor: "#6F7482" }, { text: "Spin-Up Time", customWidth: 0.38 }, { text: "097", customWidth: 0.12 }, { text: "097", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "04", customWidth: 0.08, customColor: "#6F7482" }, { text: "Start/Stop Count", customWidth: 0.38 }, { text: "099", customWidth: 0.12 }, { text: "099", customWidth: 0.12 }, { text: "1204", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "05", customWidth: 0.08, customColor: "#6F7482" }, { text: "Reallocated Sectors", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "09", customWidth: 0.08, customColor: "#6F7482" }, { text: "Power-On Hours", customWidth: 0.38 }, { text: "085", customWidth: 0.12 }, { text: "085", customWidth: 0.12 }, { text: "12044", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ]
            ],
            smartRight: [
                [ { text: "BE", customWidth: 0.08, customColor: "#6F7482" }, { text: "Airflow Temperature", customWidth: 0.38 }, { text: "062", customWidth: 0.12 }, { text: "055", customWidth: 0.12 }, { text: "38", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "C5", customWidth: 0.08, customColor: "#6F7482" }, { text: "Current Pending Sectors", customWidth: 0.38 }, { text: "100", customWidth: 0.12 }, { text: "100", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "C7", customWidth: 0.08, customColor: "#6F7482" }, { text: "UDMA CRC Error Count", customWidth: 0.38 }, { text: "200", customWidth: 0.12 }, { text: "200", customWidth: 0.12 }, { text: "0", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "F1", customWidth: 0.08, customColor: "#6F7482" }, { text: "Total LBAs Written", customWidth: 0.38 }, { text: "099", customWidth: 0.12 }, { text: "099", customWidth: 0.12 }, { text: "9.8 TB", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ],
                [ { text: "F2", customWidth: 0.08, customColor: "#6F7482" }, { text: "Total LBAs Read", customWidth: 0.38 }, { text: "099", customWidth: 0.12 }, { text: "099", customWidth: 0.12 }, { text: "21.4 TB", customWidth: 0.18 }, { text: "OK", customWidth: 0.12, customColor: "#00C853" } ]
            ]
        }
    ]

    ScrollView {
        id: scrollView
        width: parent.width
        height: parent.height
        leftPadding: 10
        topPadding: 6
        contentHeight: main.implicitHeight + 20
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
                spacing: 10

                Repeater {
                    model: page.drives

                    DriveTab {
                        required property int index
                        required property var modelData

                        modelName: modelData.tabTitle
                        interfaceName: modelData.bus
                        selected: page.currentDrive === index
                        onClicked: page.currentDrive = index
                    }
                }
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: 18

                InfoCard {
                    Layout.fillWidth: true
                    customMaximumWidth: 2000
                    title: qsTr(" Drive  —  Identification")
                    titleColor: "#00B4D8"

                    InfoCardSection {
                        sectionTitle: qsTr("Device")
                    }

                    Repeater {
                        model: [
                            { name: qsTr("Model"), value: page.drive.model },
                            { name: qsTr("Vendor"), value: page.drive.vendor },
                            { name: qsTr("Interface"), value: page.drive.interfaceName, color: "#00B4D8" },
                            { name: qsTr("Form Factor"), value: page.drive.formFactor },
                            { name: qsTr("Capacity"), value: page.drive.capacity },
                            { name: qsTr("Firmware"), value: page.drive.firmware },
                            { name: qsTr("Serial"), value: page.drive.serial }
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

                    Item {
                        width: parent.width
                        height: 10
                    }
                }

                InfoCard {
                    Layout.fillWidth: true
                    customMaximumWidth: 2000
                    title: qsTr(" Health  &  Temperature  —  SMART")
                    titleColor: "#00C853"

                    Item {
                        width: parent.width
                        height: 66

                        Rectangle {
                            id: statusPill
                            anchors.left: parent.left
                            anchors.leftMargin: 16
                            anchors.verticalCenter: parent.verticalCenter
                            width: 96
                            height: 34
                            radius: 6
                            color: Qt.rgba(page.drive.healthColor.r, page.drive.healthColor.g, page.drive.healthColor.b, 0.15)
                            border.width: 1
                            border.color: Qt.rgba(page.drive.healthColor.r, page.drive.healthColor.g, page.drive.healthColor.b, 0.55)

                            Text {
                                anchors.centerIn: parent
                                text: "●  " + page.drive.health
                                color: page.drive.healthColor
                                font.family: jetbrainsmono.name
                                font.pixelSize: 12
                            }
                        }

                        Column {
                            anchors.left: statusPill.right
                            anchors.leftMargin: 16
                            anchors.verticalCenter: parent.verticalCenter
                            spacing: 2

                            Text {
                                text: qsTr("Overall Status")
                                color: "#8B90A0"
                                font.family: roboto.name
                                font.pixelSize: 12
                            }

                            Text {
                                text: page.drive.healthNote
                                color: "#5F6472"
                                font.family: roboto.name
                                font.pixelSize: 11
                            }
                        }
                    }

                    Column {
                        width: parent.width
                        spacing: 0

                        InfoRow {
                            nameOfBlock: qsTr("Drive Temp")
                            valueOfBlock: page.drive.driveTemp + " C"
                            valueColor: "#FFB300"
                            colorOfBlock: "transparent"
                        }

                        Item {
                            width: parent.width
                            height: 12

                            BaseBar {
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.leftMargin: 16
                                anchors.rightMargin: 16
                                anchors.verticalCenter: parent.verticalCenter
                                heightValue: 8
                                precent: page.drive.driveTempPercent
                                sliderColor: "#FFB300"
                            }
                        }
                    }

                    Column {
                        width: parent.width
                        spacing: 0

                        InfoRow {
                            nameOfBlock: qsTr("Controller Temp")
                            valueOfBlock: page.drive.controllerTemp + " C"
                            valueColor: "#FF8C00"
                            colorOfBlock: "transparent"
                        }

                        Item {
                            width: parent.width
                            height: 12

                            BaseBar {
                                anchors.left: parent.left
                                anchors.right: parent.right
                                anchors.leftMargin: 16
                                anchors.rightMargin: 16
                                anchors.verticalCenter: parent.verticalCenter
                                heightValue: 8
                                precent: page.drive.controllerTempPercent
                                sliderColor: "#FF8C00"
                            }
                        }
                    }

                    InfoRow {
                        nameOfBlock: qsTr("Power-On Hours")
                        valueOfBlock: page.drive.powerOn
                        colorOfBlock: "transparent"
                    }

                    InfoRow {
                        nameOfBlock: qsTr("Power Cycles")
                        valueOfBlock: page.drive.powerCycles
                        colorOfBlock: "transparent"
                    }
                }

                InfoCard {
                    Layout.fillWidth: true
                    customMaximumWidth: 2000
                    title: " " + page.drive.wearTitle
                    titleColor: "#FFD600"

                    InfoCardSection {
                        sectionTitle: page.drive.wearSection
                    }

                    Repeater {
                        model: page.drive.wearRows

                        InfoRow {
                            required property int index
                            required property var modelData

                            nameOfBlock: modelData.name
                            valueOfBlock: modelData.value
                            valueColor: modelData.color ? modelData.color : "#E8EAF0"
                            colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
                        }
                    }

                    Item {
                        visible: page.drive.wearBarVisible
                        width: parent.width
                        height: page.drive.wearBarVisible ? 36 : 0

                        Text {
                            anchors.left: parent.left
                            anchors.leftMargin: 22
                            anchors.top: parent.top
                            anchors.topMargin: 2
                            text: qsTr("Wear Level")
                            color: "#8B90A0"
                            font.family: roboto.name
                            font.pixelSize: 14
                        }

                        Text {
                            anchors.right: parent.right
                            anchors.rightMargin: 22
                            anchors.top: parent.top
                            anchors.topMargin: 4
                            text: page.drive.wearBarValue
                            color: "#00C853"
                            font.family: jetbrainsmono.name
                            font.pixelSize: 11
                        }

                        BaseBar {
                            anchors.left: parent.left
                            anchors.right: parent.right
                            anchors.leftMargin: 22
                            anchors.rightMargin: 22
                            anchors.bottom: parent.bottom
                            heightValue: 6
                            precent: page.drive.wearBarPercent
                            sliderColor: "#00C853"
                        }
                    }

                    Repeater {
                        model: page.drive.tailRows

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
            }

            RowLayout {
                Layout.fillWidth: true
                spacing: 18

                TableCard {
                    Layout.fillWidth: true
                    customMaximumWidth: 2000
                    title: qsTr(" Logical  Partitions  —  Space  Usage")
                    titleColor: "#9B59FF"

                    TableHeader {
                        property var headerContent: [
                            { text: "Partition", colWidth: 0.32 },
                            { text: "FS", colWidth: 0.12 },
                            { text: "Used", colWidth: 0.18 },
                            { text: "Free", colWidth: 0.18 },
                            { text: "Total", colWidth: 0.20 }
                        ]
                        myColumns: headerContent
                    }

                    Repeater {
                        model: page.drive.partitions

                        Column {
                            required property var modelData
                            required property int index
                            width: parent.width
                            spacing: 2

                            TableRow {
                                myColumns: [
                                    { text: modelData.name, customWidth: 0.32 },
                                    { text: modelData.fs, customWidth: 0.12, customColor: "#8B90A0" },
                                    { text: modelData.used, customWidth: 0.18, customColor: modelData.color },
                                    { text: modelData.free, customWidth: 0.18 },
                                    { text: modelData.total, customWidth: 0.20 }
                                ]
                            }

                            Item {
                                width: parent.width
                                height: 36

                                BaseBar {
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    anchors.leftMargin: 30
                                    anchors.rightMargin: 30
                                    anchors.top: parent.top
                                    heightValue: 16
                                    precent: modelData.percent
                                    sliderColor: modelData.color
                                }

                                Text {
                                    anchors.right: parent.right
                                    anchors.rightMargin: 30
                                    anchors.bottom: parent.bottom
                                    text: modelData.percentText
                                    color: modelData.color
                                    font.family: jetbrainsmono.name
                                    font.pixelSize: 11
                                }
                            }

                            Item {
                                width: parent.width
                                height: index === page.drive.partitions.length - 1 ? 48 : 84
                            }
                        }
                    }
                }

                ActivityCard {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    customMaximumWidth: 2000
                    readValue: page.drive.read
                    writeValue: page.drive.write
                    loadValue: page.drive.load
                    samples: page.drive.history
                }
            }

            TableCard {
                Layout.fillWidth: true
                Layout.fillHeight: false
                customMaximumWidth: 2000
                title: qsTr(" SMART  Attributes  —  Key  Parameters")
                titleColor: "#FF3D3D"

                Row {
                    width: parent.width
                    spacing: 30

                    Column {
                        id: smartLeft
                        width: (parent.width - parent.spacing) / 2
                        spacing: 4

                        TableHeader {
                            width: parent.width
                            myColumns: page.smartColumns
                        }

                        Repeater {
                            model: page.drive.smartLeft

                            Item {
                                required property var modelData
                                width: parent.width
                                height: 26

                                TableRow {
                                    anchors.verticalCenter: parent.verticalCenter
                                    myColumns: modelData
                                }
                            }
                        }
                    }

                    Column {
                        width: (parent.width - parent.spacing) / 2
                        spacing: 4

                        TableHeader {
                            width: parent.width
                            myColumns: page.smartColumns
                        }

                        Repeater {
                            model: page.drive.smartRight

                            Item {
                                required property var modelData
                                width: parent.width
                                height: 26

                                TableRow {
                                    anchors.verticalCenter: parent.verticalCenter
                                    myColumns: modelData
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
