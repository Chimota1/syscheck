import QtQuick
import QtQuick.Layouts

Item {
    id: root
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}

    property var samples: []
    property real maximumValue: 0
    property color readColor: "#00C853"
    property color writeColor: "#FFD600"
    property string historyLabel: qsTr("60s history")
    property string readLabel: qsTr("Read")
    property string writeLabel: qsTr("Write")
    property int barSpacing: 3

    readonly property real scaleMax: {
        if (maximumValue > 0)
            return maximumValue

        var maximum = 1
        for (var i = 0; i < samples.length; ++i) {
            maximum = Math.max(maximum, samples[i].read || 0, samples[i].write || 0)
        }
        return maximum
    }

    Layout.fillWidth: true
    implicitHeight: 160

    Item {
        id: plot
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: legend.top
        anchors.bottomMargin: 10

        Rectangle {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            height: 1
            color: "#2A2D3A"
        }

        Repeater {
            model: root.samples

            Item {
                required property var modelData
                required property int index

                x: index * width
                width: plot.width / Math.max(root.samples.length, 1)
                height: plot.height

                Rectangle {
                    id: readBar
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    width: Math.max(parent.width - root.barSpacing, 2)
                    height: Math.max(parent.height * ((modelData.read || 0) / root.scaleMax), 2)
                    radius: 2
                    color: root.readColor
                }

                Rectangle {
                    anchors.left: readBar.left
                    anchors.right: readBar.right
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: Math.max(parent.height * ((modelData.write || 0) / root.scaleMax) - 1, 0)
                    height: 2
                    color: root.writeColor
                }
            }
        }
    }

    Row {
        id: legend
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        spacing: 16

        Text {
            text: "■  " + root.readLabel
            color: root.readColor
            font.family: jetbrainsmono.name
            font.pixelSize: 10
        }

        Text {
            text: "■  " + root.writeLabel
            color: root.writeColor
            font.family: jetbrainsmono.name
            font.pixelSize: 10
        }
    }

    Text {
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        text: root.historyLabel
        color: "#5F6472"
        font.family: jetbrainsmono.name
        font.pixelSize: 10
    }
}
