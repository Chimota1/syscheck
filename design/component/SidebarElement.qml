import QtQuick

Rectangle {
    id: sidebarelement
    property string nameOfblock
    width: parent.width
    height: 30
    color: {
        if(nameOfblock == currentPage){
            return "#303030"
        }
        else{
            return "#181818"
        }
    }
    Row{
        id: summaryblock
        spacing: 5
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        Text {
            id: point
            text: qsTr("•")
            font.pixelSize: 18
            color: "#00D4FF"
            opacity: {
                if (nameOfblock == currentPage){
                   return 1
                }
                else{
                    return 0
                }
            }
        }
        Text{
            id:summarycontent
            text: nameOfblock
            font.pixelSize: 18
            font.family: roboto.name
            color: "#00D4FF"
        }
    }
    MouseArea{
        anchors.fill: parent
        onClicked: currentPage = nameOfblock
        cursorShape: Qt.PointingHandCursor
    }
    }
