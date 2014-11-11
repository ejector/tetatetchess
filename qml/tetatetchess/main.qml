import QtQuick 2.0

Rectangle {
    width: 420
    height: 420
    Rectangle{
        width: parent.width < parent.height ? parent.width : parent.height
        height: parent.width < parent.height ? parent.width : parent.height
        Image {
            id: imgBoard
            source: "chessboard_.png"
            anchors.fill: chessBoard
        }
        ListModel{
            id: tempModel
            ListElement{imagePath: "black/rook.png"}
            ListElement{imagePath: "black/knight.png"}
            ListElement{imagePath: "black/bishop.png"}
            ListElement{imagePath: "black/queen.png"}
            ListElement{imagePath: "black/king.png"}
            ListElement{imagePath: "black/bishop.png"}
            ListElement{imagePath: "black/knight.png"}
            ListElement{imagePath: "black/rook.png"}
            ListElement{imagePath: "black/pawn.png"}
            ListElement{imagePath: "black/pawn.png"}
            ListElement{imagePath: "black/pawn.png"}
            ListElement{imagePath: "black/pawn.png"}
            ListElement{imagePath: "black/pawn.png"}
            ListElement{imagePath: "black/pawn.png"}
            ListElement{imagePath: "black/pawn.png"}
            ListElement{imagePath: "black/pawn.png"}

            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}
            ListElement{imagePath: ""}

            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/pawn.png"}
            ListElement{imagePath: "white/rook.png"}
            ListElement{imagePath: "white/knight.png"}
            ListElement{imagePath: "white/bishop.png"}
            ListElement{imagePath: "white/queen.png"}
            ListElement{imagePath: "white/king.png"}
            ListElement{imagePath: "white/bishop.png"}
            ListElement{imagePath: "white/knight.png"}
            ListElement{imagePath: "white/rook.png"}
        }
        Component{
            id: cellBoard
            Rectangle
            {
                id: wrapper
                width: chessBoard.cellWidth
                height: chessBoard.cellHeight
                color: "transparent"
                Image
                {
                    anchors.centerIn: parent
                    width: parent.width
                    height: parent.height
                    smooth: true
                    source: imagePath
                    fillMode: Image.PreserveAspectFit
                }
                MouseArea
                {
                    anchors.fill: parent
                    onClicked: {
//                        parent.border.pixelAligned = true
                        parent.border.width = 2
                        parent.border.color = "limegreen"
                    }
                }
            }
        }

        GridView{
            id: chessBoard
            anchors.fill: parent
            cellWidth: parent.width / 8
            cellHeight: parent.height / 8
            model: tempModel
            delegate: cellBoard
//            interactive: false
            highlight: Rectangle{
                color: "limegreen"
                radius: 0
            }
            focus: true
            //            currentIndex: 63
        }
    }
}
