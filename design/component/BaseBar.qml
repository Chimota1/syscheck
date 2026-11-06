import QtQuick
import QtQuick.Layouts

Rectangle {
    property real precent: 0.67
    property int heightValue: 10
    property color sliderColor
    id: background
    Layout.fillWidth: true
    height: heightValue
    radius: 25
    color: "#4A4F60"
    Rectangle{
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: background.width * background.precent
        radius: parent.radius
        color: background.sliderColor
    }
}
