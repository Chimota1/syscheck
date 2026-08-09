import QtQuick 2.3

Item {
    id:root
    FontLoader{id:jetbrainsmono; source: "qrc:/qt/qml/syscheck/fonts/JetBrainsMono.ttf"}
    width: 200
    height: 200
        property color valueColor
        property string value
        property string title
        property real precent
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
        anchors.centerIn: root
        spacing: 2
        Text {
            id: valueBlock
            text: qsTr(value)
            font.family: jetbrainsmono.name
            font.pixelSize: 12
            color: valueColor
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: name
            text: qsTr(title)
            font.family: jetbrainsmono.name
            font.pixelSize: 10
            color: "#7A7A8A"
        }
    }
}
