import QtQuick
import QtQuick.Layouts

InfoCard {
    id: root

    property string readValue: qsTr("0")
    property string writeValue: qsTr("0")
    property string loadValue: qsTr("0%")
    property var samples: []
    property color readColor: "#00E676"
    property color writeColor: "#FFB300"
    property color loadColor: "#00D4FF"
    property string historyLabel: qsTr("60s history")

    title: qsTr(" Live  Activity  —  Read  /  Write  Speed")
    titleColor: "#00C853"
    Layout.fillHeight: false

    Column {
        width: parent.width
        spacing: 14

        Item {
            width: parent.width
            height: 92

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 18
                anchors.rightMargin: 18
                spacing: 12

                ActivityStat {
                    title: qsTr("READ")
                    value: root.readValue
                    unit: qsTr("MB/s")
                    accentColor: root.readColor
                }

                ActivityStat {
                    title: qsTr("WRITE")
                    value: root.writeValue
                    unit: qsTr("MB/s")
                    accentColor: root.writeColor
                }

                ActivityStat {
                    title: qsTr("LOAD")
                    value: root.loadValue
                    unit: ""
                    accentColor: root.loadColor
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
                samples: root.samples
                historyLabel: root.historyLabel
            }
        }
    }
}
