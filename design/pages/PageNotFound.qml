import QtQuick
import QtQuick.Layouts

Item {
    FontLoader{id:roboto; source: "qrc:/qt/qml/syscheck/fonts/Roboto.ttf"}
    width: parent.width
    height: parent.height

    ColumnLayout{
        anchors.centerIn: parent
        spacing: 50
        Image {
            id: errorimage
            source: "qrc:/qt/qml/syscheck/img/close.png"
            Layout.preferredWidth: 200
            Layout.preferredHeight: 200
            Layout.alignment: Qt.AlignHCenter
        }
        Text{
            text: qsTr("Sorry we don`t found this page")
            font.pixelSize: 36
            font.bold: true
            font.family: roboto.name
            color: "white"
            Layout.alignment: Qt.AlignHCenter
        }
        Text{
            text: qsTr("please try again")
            font.pixelSize: 36
            font.bold: true
            font.family: roboto.name
            color: "white"
            Layout.alignment: Qt.AlignHCenter
        }
    }
}
