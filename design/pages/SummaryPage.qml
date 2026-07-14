import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import "qrc:/qt/qml/syscheck/design/component"
Item{
    width: parent.width
    height: parent.height
    InfoCard{
        title: qsTr("CPU  —  Quick Summary")
        titleColor: "#FF9800"
        InfoCardSection {
            sectionTitle: qsTr("Processor")
        }
        Repeater{
            model: [
                { name: "Name", value: "Intel Core i9-14900K" },
                { name: "Codename", value: "Raptor Lake Refresh" },
                { name: "Package", value: "LGA1700" },
                { name: "Technology", value: "Intel 7" }
            ]
            InfoRow{
                required property var modelData
                required property int index
                nameOfBlock: modelData.name
                valueOfBlock: modelData.value
                colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
            }
        }
        InfoCardSection{
            sectionTitle: qsTr("Clocks  (current)")
        }
        Repeater{
            model: [
                {name: "Core Speed", value: "5600 MHz"},
                {name: "Multiplier", value: "x56  (8 × 100)"},
                {name: "Bus Speed", value: "100.0 MHz"},
                {name: "Rated FSB", value: "-"}
            ]
            InfoRow{
                required property var modelData
                required property int index
                nameOfBlock: modelData.name
                valueOfBlock: modelData.value
                colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
            }
        }
        InfoCardSection{
            sectionTitle: qsTr("Cache")
        }
        Repeater{
            model: [
                {name: "L1 Data", value: "80 KB  (per P-core)"},
                {name: "L1 Inst.", value: "32 KB  (per P-core)"},
                {name: "L2", value: "2 MB  (per P-core cluster)"}
            ]
            InfoRow{
                required property var modelData
                required property int index
                nameOfBlock: modelData.name
                valueOfBlock: modelData.value
                colorOfBlock: index % 2 === 1 ? "#202329" : "#252830"
            }
        }
    }
}
