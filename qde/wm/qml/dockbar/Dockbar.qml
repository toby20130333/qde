 
import QtQuick 1.0

Rectangle {
    id: root
    property int itemSize: 64
    property int maxBarHeight: itemSize * 2
    property bool containsMouse : false

    color: "transparent"
    height: (containsMouse) ? maxBarHeight : itemSize
    width: rootWidth
    Item {
        id: positioner // Center horizzontally the bottom bar
        width: list.contentWidth
        height: parent.height
        anchors.centerIn: parent

        Rectangle {
            id: backgroundBar
            width: list.contentWidth
            height: itemSize
            anchors.bottom: parent.bottom
            color: "white"
            opacity: 0.5
            radius: 5
        }

        ListView {
            id: list
            //cacheBuffer: 10 //Show all items
            orientation: ListView.Horizontal
            anchors.bottom: backgroundBar.bottom
            anchors.horizontalCenter: backgroundBar.Center
            width: parent.width
            model: 5
            delegate: DockbarItem {
                size: itemSize
                onHasMouse: root.containsMouse = !root.containsMouse
            }
        }
    }
}