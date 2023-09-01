import QtQuick 2.15
import QtQuick.Window 2.14

import QtLocation 5.12
import QtPositioning 5.12


//import Handler 1.0

Rectangle
{
    id:rightScreen

//    Number
//    {
//        id:system1

//    }

    anchors
    {
        top:parent.top
        bottom:bottomBar.top
        right: parent.right
    }
    Plugin {
        name: "osm"
        id:mapPlugin
    }

    Map{
        anchors.fill:parent
        plugin:mapPlugin
        center:QtPositioning.coordinate(37.46,-122.14)
        zoomLevel:14
    }
//    Map {
//           anchors.fill: parent
//           zoomLevel: 14
//           plugin: Plugin {
//               name: "osm"
//               //PluginParameter { name: "osm.mapping.providersrepository.address"; value: "http://www.mywebsite.com/osm_repository" }
//               //PluginParameter { name: "osm.mapping.highdpi_tiles"; value: true }
//           }
//           activeMapType: supportedMapTypes[1] // Cycle map provided by Thunderforest
//       }

    Image
    {
        id:lockIcon
        anchors
        {
            left:parent.left
            top:parent.top
            margins:20
        }
        fillMode:Image.PreserveAspectFit
        width: parent.width / 40



        source: ( systemHandler.carLocked ? "qrc:/ui/assets/closelock.jpg" : "qrc:/ui/assets/openlock.jpg")

        MouseArea{
            anchors.fill:parent
            onClicked:systemHandler.setCarLocked(!systemHandler.carLocked)
        }
    }

    Text {
        id: datetime
        anchors
        {
            left:lockIcon.right
            leftMargin:30
            bottom:lockIcon.bottom
        }
        font.pixelSize: 15
        font.family: "times new roman"
        font.bold:true
        color:"black"
        text:systemHandler.currentTime
    }

    Text {
        id: temperature
        anchors
        {
            left:datetime.right
            leftMargin:30
            bottom:datetime.bottom
        }
        font.pixelSize: 15
        font.family: "times new roman"
        font.bold:true
        color:"black"
        text:systemHandler.outdoorTemp+"F"
    }
    Text {
        id: username
        anchors
        {
            left:temperature.right
            leftMargin:30
            bottom:temperature.bottom
        }
        font.pixelSize: 15
        font.family: "times new roman"
        font.bold:true
        color:"black"
        text:systemHandler.userName;
    }

     NavigationSearch
     {
          id:navSearchBox
          width:parent.width*1/3
          height:parent.height*1/12
          anchors{
              left:lockIcon.left
              top:lockIcon.bottom
              topMargin:15

          }
     }


    width:parent.width * 2/3
}


