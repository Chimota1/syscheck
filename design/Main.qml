import QtQuick 2.2
import QtQuick.Window 2.1
import "component"
import "pages"

Window {
   property string currentPage: qsTr("Summary")
   id: root
   objectName: "window"
   visible: true
   visibility: Window.Maximized
   width: Screen.desktopAvailableWidth
   height: Screen.desktopAvailableHeight
   minimumWidth: 1024
   minimumHeight: 724
   color: "#000000"

   Header{
      id: headerblcok
      width: parent.width
      anchors.top: parent.top
   }

   Sidebar{
      id: sidebarblock
      anchors.left: parent.left
      anchors.top: headerblcok.bottom
      anchors.bottom: footerblock.top
   }

   Loader{
      id: maincontent
      anchors.fill: backgroundblock
      z:1
      source:
          if (currentPage === "Summary")
            return "pages/SummaryPage.qml"
         else if (currentPage === "OS")
             return "pages/OSPage.qml"
         else if (currentPage === "MotherBoard")
             return "pages/MotherboardPage.qml"
         else if (currentPage === "CPU")
             return "pages/CPUPage.qml"
         else if (currentPage === "GPU")
             return "pages/GPUPage.qml"
         else return "pages/PageNotFound.qml"
   }

   MainBackground{
      id:backgroundblock
      anchors.left: sidebarblock.right
      anchors.top: headerblcok.bottom
      anchors.bottom: footerblock.top
      anchors.right: parent.right
   }

   Footer{
      id: footerblock
      width: parent.width
      anchors.bottom: parent.bottom
      z:2
   }
}
