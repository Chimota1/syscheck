import QtQuick
import QtQuick.Layouts
import "qrc:/qt/qml/syscheck/design/component"
Item{
    width: parent.width
    height: parent.height
    InfoCard{
        title: qsTr("CPU  —  Quick Summary")
        titleColor: "#FF9800"
            InfoCardSection{
                sectionTitle: qsTr("Processor")
            }
    }
}
