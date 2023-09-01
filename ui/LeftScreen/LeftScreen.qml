import QtQuick 2.15

Rectangle
{
    id:leftScreen

    anchors
    {
        left:parent.left
        bottom:bottomBar.top
        right:rightScreen.left
        top:parent.top
    }
    color:"white"
    Image
    {
        id:carRender
        anchors.centerIn: parent
        width:parent.width * .75
        fillMode:Image.PreserveAspectFit
        source:"qrc:/ui/assets/carrender.jpg"

    }
}

