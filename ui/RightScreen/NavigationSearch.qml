import QtQuick 2.15

Rectangle {
  id:navSearchBox
  radius:5
  color:"#ede9e8"
  Text {
      id: nav
      color:"#373737"
      text: qsTr("Navigate")
      anchors
      {
          verticalCenter:parent.verticalCenter
          left:parent.left
          leftMargin:25
      }
      TextInput
      {
          id:navigationTextInput
          color:"black"
          anchors
          {
              top:parent.top
              bottom:parent.bottom
              right:parent.right
              //left:parent.right
              leftMargin:20
          }
      }
  }
}
