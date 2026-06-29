import QtQuick

Rectangle{
    property string title
    width: parent.width
    height: 35
    color: "#000000"
    Text {
        text: title
        font.bold: true
        font.pixelSize: 20
        font.family: roboto.name
        anchors.centerIn: parent
        color: "#5CA8FF"
    }
}
