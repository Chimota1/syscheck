import QtQuick 2.3

Item {
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    width: 300
    height: 400
    anchors.centerIn: parent
    property color valueColor: "#00B4D8"
    property string value: "2400 MHz"
    property string title: "Core Clock"
    property real precent: 0.1
    Canvas {
        anchors.fill: parent
        onPaint: {
            var ctx = getContext("2d");
            ctx.reset();

            var centreX = width / 2;
            var centreY = height / 2;

            ctx.beginPath();
            ctx.strokeStyle = "#2A2A3A";
            ctx.lineWidth = 10;
            ctx.arc(centreX, centreY, width / 4, 0, Math.PI * 2, false);
            ctx.stroke()

            ctx.beginPath();
            ctx.strokeStyle = valueColor;
            ctx.lineWidth = 10;
            ctx.arc(centreX, centreY, width / 4, Math.PI, Math.PI + Math.PI * 2 * precent, false);
            ctx.stroke()
        }
    }
    Column{
        anchors.centerIn: parent
        spacing: 2
        Text {
            id: valueBlock
            text: qsTr(value)
            font.family: jetbrainsmono.name
            font.pixelSize: 14
            color: valueColor
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: name
            text: qsTr(title)
            font.family: jetbrainsmono.name
            font.pixelSize: 12
            color: "#7A7A8A"
        }
    }
}
