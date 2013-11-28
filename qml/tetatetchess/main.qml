import QtQuick 2.0

Rectangle {
    width: 360
    height: 360
    Rectangle{
        width: parent.width  // fix this, need choose minimum side size
        height: parent.width
        Image {
            id: imgBoard
            source: "chessboard.jpg"
            anchors.fill: parent
        }
    }
}
