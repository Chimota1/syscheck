import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/qt/qml/syscheck/design/component"

Item {
    anchors.fill: parent

    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}

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
                spacing: 18

                ColumnLayout {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredWidth: (main.width - 18) * 0.33
                    spacing: 18

                    InfoCard {
                        Layout.fillWidth: true
                        Layout.fillHeight: false
                        Layout.preferredHeight: 360
                        customMaximumWidth: 2000
                        title: qsTr(" Active  Adapter")
                        titleColor: "#00D4FF"

                        Item {
                            width: parent.width
                            height: 78

                            Text {
                                anchors.left: parent.left
                                anchors.leftMargin: 20
                                anchors.top: parent.top
                                anchors.topMargin: 6
                                text: qsTr("Intel  Wi-Fi  6E  AX211")
                                color: "#E8EAF0"
                                font.family: jetbrainsmono.name
                                font.pixelSize: 17
                            }

                            Text {
                                anchors.left: parent.left
                                anchors.leftMargin: 20
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 10
                                text: qsTr("Wireless  ·  802.11ax  ·  5 GHz")
                                color: "#6F7482"
                                font.family: jetbrainsmono.name
                                font.pixelSize: 11
                            }

                            Rectangle {
                                anchors.right: parent.right
                                anchors.rightMargin: 16
                                anchors.verticalCenter: parent.verticalCenter
                                width: 116
                                height: 32
                                radius: 6
                                color: Qt.rgba(0, 0.784, 0.325, 0.15)
                                border.width: 1
                                border.color: Qt.rgba(0, 0.784, 0.325, 0.55)

                                Text {
                                    anchors.centerIn: parent
                                    text: "●  " + qsTr("CONNECTED")
                                    color: "#00C853"
                                    font.family: jetbrainsmono.name
                                    font.pixelSize: 12
                                }
                            }
                        }

                        Repeater {
                            model: [
                                { name: qsTr("Interface"), value: qsTr("wlan0") },
                                { name: qsTr("Link Speed"), value: qsTr("1.2 Gbps"), color: "#00D4FF" },
                                { name: qsTr("Standard"), value: qsTr("Wi-Fi 6  (802.11ax)") },
                                { name: qsTr("Band"), value: qsTr("5 GHz") },
                                { name: qsTr("Channel"), value: qsTr("36") },
                                { name: qsTr("Uptime"), value: qsTr("04:12:33") }
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
                        Layout.fillHeight: true
                        customMaximumWidth: 2000
                        title: qsTr(" Network  Identifiers")
                        titleColor: "#00B4D8"

                        InfoCardSection {
                            sectionTitle: qsTr("Addressing")
                        }

                        Repeater {
                            model: [
                                { name: qsTr("IPv4 Address"), value: qsTr("192.168.1.105"), color: "#00D4FF" },
                                { name: qsTr("Subnet Mask"), value: qsTr("255.255.255.0") },
                                { name: qsTr("Default Gateway"), value: qsTr("192.168.1.1") },
                                { name: qsTr("DNS Servers"), value: qsTr("1.1.1.1  ·  8.8.8.8") },
                                { name: qsTr("Public IP"), value: qsTr("203.0.113.42"), color: "#00C853" },
                                { name: qsTr("IPv6 Address"), value: qsTr("fe80::a6c3:f0ff:fe12:3456") }
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

                        InfoCardSection {
                            sectionTitle: qsTr("Interface")
                        }

                        Repeater {
                            model: [
                                { name: qsTr("MAC Address"), value: qsTr("A4:C3:F0:XX:XX:XX") },
                                { name: qsTr("MTU"), value: qsTr("1500 bytes") },
                                { name: qsTr("Driver"), value: qsTr("Intel AX211  ·  23.40.0") },
                                { name: qsTr("DHCP Lease"), value: qsTr("23h 41m"), color: "#FFD600" }
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

                        InfoCardSection {
                            sectionTitle: qsTr("Connection")
                        }

                        Repeater {
                            model: [
                                { name: qsTr("Configuration"), value: qsTr("DHCP") },
                                { name: qsTr("Lease Obtained"), value: qsTr("04:12:33") },
                                { name: qsTr("Profile"), value: qsTr("HomeNet-5G"), color: "#00D4FF" }
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
                }

                ColumnLayout {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredWidth: (main.width - 18) * 0.67
                    spacing: 18

                    InfoCard {
                        Layout.fillWidth: true
                        Layout.fillHeight: false
                        Layout.preferredHeight: 360
                        customMaximumWidth: 2000
                        title: qsTr(" Live  Bandwidth")
                        titleColor: "#00C853"

                        Item {
                            width: parent.width
                            height: 104

                            RowLayout {
                                anchors.fill: parent
                                anchors.leftMargin: 18
                                anchors.rightMargin: 18
                                spacing: 12

                                ActivityStat {
                                    title: qsTr("DOWNLOAD")
                                    value: qsTr("128.4")
                                    unit: qsTr("Mbps")
                                    note: qsTr("peak 412.7 Mbps")
                                    accentColor: "#00D4FF"
                                }

                                ActivityStat {
                                    title: qsTr("UPLOAD")
                                    value: qsTr("42.1")
                                    unit: qsTr("Mbps")
                                    note: qsTr("peak 96.3 Mbps")
                                    accentColor: "#FFD600"
                                }
                            }
                        }

                        Item {
                            width: parent.width
                            height: 170

                            ActivityChart {
                                anchors.fill: parent
                                anchors.leftMargin: 18
                                anchors.rightMargin: 18
                                anchors.bottomMargin: 8
                                readLabel: qsTr("Download")
                                writeLabel: qsTr("Upload")
                                readColor: "#00D4FF"
                                writeColor: "#FFD600"
                                historyLabel: qsTr("60s history")
                                samples: [
                                    { read: 84, write: 32 },
                                    { read: 132, write: 41 },
                                    { read: 118, write: 38 },
                                    { read: 205, write: 56 },
                                    { read: 176, write: 49 },
                                    { read: 143, write: 44 },
                                    { read: 268, write: 62 },
                                    { read: 312, write: 78 },
                                    { read: 287, write: 71 },
                                    { read: 224, write: 58 },
                                    { read: 196, write: 52 },
                                    { read: 241, write: 64 },
                                    { read: 358, write: 86 },
                                    { read: 412, write: 96 },
                                    { read: 376, write: 89 },
                                    { read: 298, write: 74 },
                                    { read: 254, write: 68 },
                                    { read: 212, write: 57 },
                                    { read: 168, write: 48 },
                                    { read: 146, write: 43 },
                                    { read: 189, write: 51 },
                                    { read: 236, write: 61 },
                                    { read: 174, write: 47 },
                                    { read: 128, write: 39 }
                                ]
                            }
                        }

                        Item {
                            width: parent.width
                            height: 10
                        }
                    }

                    RowLayout {
                        Layout.fillWidth: true
                        spacing: 18

                        InfoCard {
                            Layout.fillWidth: true
                            customMaximumWidth: 2000
                            title: qsTr(" Data  Usage  —  Session")
                            titleColor: "#FFD600"

                            Item {
                                width: parent.width
                                height: 104

                                RowLayout {
                                    anchors.fill: parent
                                    anchors.leftMargin: 18
                                    anchors.rightMargin: 18
                                    spacing: 12

                                    ActivityStat {
                                        title: qsTr("DOWNLOAD")
                                        value: qsTr("4.82")
                                        unit: qsTr("GB")
                                        accentColor: "#00D4FF"
                                    }

                                    ActivityStat {
                                        title: qsTr("UPLOAD")
                                        value: qsTr("1.27")
                                        unit: qsTr("GB")
                                        accentColor: "#FFD600"
                                    }

                                    ActivityStat {
                                        title: qsTr("TOTAL")
                                        value: qsTr("6.09")
                                        unit: qsTr("GB")
                                        accentColor: "#9B59FF"
                                    }
                                }
                            }

                            Item {
                                width: parent.width
                                height: 54

                                BaseBar {
                                    id: ratioBar
                                    anchors.left: parent.left
                                    anchors.right: parent.right
                                    anchors.leftMargin: 18
                                    anchors.rightMargin: 18
                                    anchors.top: parent.top
                                    anchors.topMargin: 6
                                    heightValue: 10
                                    precent: 0.79
                                    sliderColor: "#00D4FF"
                                }

                                Text {
                                    anchors.left: ratioBar.left
                                    anchors.top: ratioBar.bottom
                                    anchors.topMargin: 8
                                    text: qsTr("79%  Download")
                                    color: "#00D4FF"
                                    font.family: jetbrainsmono.name
                                    font.pixelSize: 10
                                }

                                Text {
                                    anchors.right: ratioBar.right
                                    anchors.top: ratioBar.bottom
                                    anchors.topMargin: 8
                                    text: qsTr("21%  Upload")
                                    color: "#FFD600"
                                    font.family: jetbrainsmono.name
                                    font.pixelSize: 10
                                }
                            }

                            Repeater {
                                model: [
                                    { name: qsTr("Packets Sent"), value: qsTr("3.9M") },
                                    { name: qsTr("Packets Received"), value: qsTr("1.1M") }
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
                            title: qsTr(" Link  Quality")
                            titleColor: "#9B59FF"

                            Item {
                                width: parent.width
                                height: 104

                                RowLayout {
                                    anchors.fill: parent
                                    anchors.leftMargin: 18
                                    anchors.rightMargin: 18
                                    spacing: 12

                                    ActivityStat {
                                        title: qsTr("SIGNAL")
                                        value: qsTr("82")
                                        unit: qsTr("%")
                                        note: qsTr("-48 dBm")
                                        accentColor: "#9B59FF"
                                    }

                                    ActivityStat {
                                        title: qsTr("PING")
                                        value: qsTr("14")
                                        unit: qsTr("ms")
                                        note: qsTr("2 ms jitter")
                                        accentColor: "#00D4FF"
                                    }
                                }
                            }

                            Repeater {
                                model: [
                                    { name: qsTr("Standard"), value: qsTr("Wi-Fi 6  (802.11ax)") },
                                    { name: qsTr("Band"), value: qsTr("5 GHz") },
                                    { name: qsTr("Channel"), value: qsTr("36") },
                                    { name: qsTr("Security"), value: qsTr("WPA3-Personal"), color: "#00C853" },
                                    { name: qsTr("Packet Loss"), value: qsTr("0%"), color: "#00C853" }
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
                    }

                    TableCard {
                        Layout.fillWidth: true
                        Layout.fillHeight: false
                        customMaximumWidth: 2000
                        title: qsTr(" All  Network  Interfaces")
                        titleColor: "#00D4FF"

                        TableHeader {
                            property var headerContent: [
                                { text: "Interface", colWidth: 0.15 },
                                { text: "Type", colWidth: 0.10 },
                                { text: "State", colWidth: 0.12 },
                                { text: "IPv4 Address", colWidth: 0.20 },
                                { text: "MAC Address", colWidth: 0.19 },
                                { text: "Speed", colWidth: 0.10 },
                                { text: "RX / TX", colWidth: 0.14 }
                            ]
                            myColumns: headerContent
                        }

                        Repeater {
                            model: [
                                [
                                    { text: "wlan0", customWidth: 0.15, customColor: "#00D4FF" },
                                    { text: "Wi-Fi", customWidth: 0.10, customColor: "#8B90A0" },
                                    { text: "Connected", customWidth: 0.12, customColor: "#00C853" },
                                    { text: "192.168.1.105", customWidth: 0.20 },
                                    { text: "A4:C3:F0:XX:XX:XX", customWidth: 0.19, customColor: "#8B90A0" },
                                    { text: "1.2 Gbps", customWidth: 0.10 },
                                    { text: "128.4 / 42.1", customWidth: 0.14, customColor: "#00D4FF" }
                                ],
                                [
                                    { text: "eth0", customWidth: 0.15, customColor: "#6F7482" },
                                    { text: "Ethernet", customWidth: 0.10, customColor: "#6F7482" },
                                    { text: "Disconnected", customWidth: 0.12, customColor: "#6F7482" },
                                    { text: "—", customWidth: 0.20, customColor: "#6F7482" },
                                    { text: "3C:7C:3F:XX:XX:XX", customWidth: 0.19, customColor: "#6F7482" },
                                    { text: "1 Gbps", customWidth: 0.10, customColor: "#6F7482" },
                                    { text: "0 / 0", customWidth: 0.14, customColor: "#6F7482" }
                                ],
                                [
                                    { text: "lo", customWidth: 0.15, customColor: "#8B90A0" },
                                    { text: "Loopback", customWidth: 0.10, customColor: "#8B90A0" },
                                    { text: "Up", customWidth: 0.12, customColor: "#8B90A0" },
                                    { text: "127.0.0.1", customWidth: 0.20 },
                                    { text: "00:00:00:00:00:00", customWidth: 0.19, customColor: "#8B90A0" },
                                    { text: "—", customWidth: 0.10, customColor: "#8B90A0" },
                                    { text: "0 / 0", customWidth: 0.14, customColor: "#8B90A0" }
                                ],
                                [
                                    { text: "docker0", customWidth: 0.15, customColor: "#8B90A0" },
                                    { text: "Bridge", customWidth: 0.10, customColor: "#8B90A0" },
                                    { text: "Up", customWidth: 0.12, customColor: "#8B90A0" },
                                    { text: "172.17.0.1", customWidth: 0.20 },
                                    { text: "02:42:AC:XX:XX:XX", customWidth: 0.19, customColor: "#8B90A0" },
                                    { text: "—", customWidth: 0.10, customColor: "#8B90A0" },
                                    { text: "0 / 0", customWidth: 0.14, customColor: "#8B90A0" }
                                ],
                                [
                                    { text: "bt0", customWidth: 0.15, customColor: "#6F7482" },
                                    { text: "Bluetooth", customWidth: 0.10, customColor: "#6F7482" },
                                    { text: "Down", customWidth: 0.12, customColor: "#6F7482" },
                                    { text: "—", customWidth: 0.20, customColor: "#6F7482" },
                                    { text: "00:1A:7D:XX:XX:XX", customWidth: 0.19, customColor: "#6F7482" },
                                    { text: "3 Mbps", customWidth: 0.10, customColor: "#6F7482" },
                                    { text: "0 / 0", customWidth: 0.14, customColor: "#6F7482" }
                                ]
                            ]

                            Item {
                                required property var modelData
                                required property int index
                                width: parent.width
                                height: 30

                                Rectangle {
                                    anchors.fill: parent
                                    anchors.leftMargin: 6
                                    anchors.rightMargin: 6
                                    radius: 8
                                    color: index === 0 ? "#241C38" : "transparent"
                                }

                                Rectangle {
                                    visible: index === 0
                                    anchors.left: parent.left
                                    anchors.leftMargin: 6
                                    anchors.verticalCenter: parent.verticalCenter
                                    width: 3
                                    height: 22
                                    radius: 2
                                    color: "#00D4FF"
                                }

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
