import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Rectangle {
//ow.height
        color:"transparent"
        property bool loggedIn: false // Ajout d'une propriété pour
///fonts family/
    FontLoader {
        id: font_titre
       source:"qrc:/fonts/CooperBlackRegular.ttf" // Update the p
    }
    FontLoader {
        id: titre
       source:"qrc:/fonts/CooperBlackRegular.ttf"
    }


    Image {

        id: backgroundlogin
        width: (1919/1920) *window.width
        height: (1079/1080) *window.height
        source:"qrc:/assets/b.png"
        anchors{

            top: parent.top
             topMargin: (1/1080) *window.height
             leftMargin: (1/1920) *window.width
        }
    }



   Text {
        id: welcome

        anchors{
            left: parent.left
            top: parent.top
            topMargin: (200/1080) *window.height
            leftMargin: (1100/1920) *window.width
    }
        color: "#4055a5"
        text: qsTr("Welcome Back !")
        font.pixelSize: 74
        font.family: font_titre.name
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
     }
    Text {

        id: login

        text: "login to continue"
        anchors {
            left: parent.left
            top: parent.top
            leftMargin: (1100/1920) *window.width
            topMargin: (300/1080) *window.height

        }

        font.family: titre.name
        font.pixelSize: 26
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        opacity: 0.6
    }

    Text {
       id: text_username

       anchors{
           topMargin: (450/1080) *window.height
           leftMargin: (1100/1920) *window.width
           top: parent.top
           left: parent.left

       }
       color: "#000000"
       text: qsTr("username")
       font.pixelSize: 20
       font.family: titre.name
       opacity: 0.6
   }
     TextField {
         id: usernameinput
         width: (400/1920) *window.width
         height: (69/1080) *window.height
         font.pixelSize: 20
         font.family: titre.name
         anchors{

             top: parent.top
             left: parent.left
             topMargin: (480/1080) *window.height
             leftMargin: (1100/1920) *window.width
     }
         background: Rectangle{
             width: (550/1920) *window.width
             height: (69/1080) *window.height
             //radius: 25
             border.width: 1
             border.color:"#6433d8"
         }

      }
     Text {
        id: text_password

        anchors{
            topMargin: (570/1080) *window.height
            leftMargin: (1100/1920) *window.width
            top: parent.top
            left: parent.left

        }
        color: "#000000"
        text: qsTr("Password")
        font.pixelSize: 20
        font.family: titre.name
        opacity: 0.6
    }
    TextField {
         id: passwordinput
         width: (400/1920) *window.width
         height: (69/1080) *window.height
         font.pixelSize: 20
         font.family: titre.name
         anchors{

            top: parent.top
            left:parent.left
             topMargin: (600/1080)*window.height
             leftMargin: (1100/1920)*window.width

     }
         background: Rectangle{
             width: (550/1920) *window.width
             height: (69/1080) *window.height
             border.width: 1
             border.color:"#6433d8"
         }
      }


        Button {

                id: loginbutto
                width: (250/1920) *window.width
                height: (69/1080) *window.height
                onClicked: {
                    console.log("Username:", usernameinput.text)
                    console.log("Password:", passwordinput.text)

                    if (usernameinput.text === "oussema" && passwordinput.text === "0") {

                          stackView.push("Test.qml")

                    } else {
                        console.log("Incorrect login details")
                    }
                }
                background:Rectangle {
                    //color:"transparent"
                    width: (255/1920) *window.width
                    height: (75/1080) *window.height
                    color: "#6433d8"
                    radius: 25
                    border.width: 1
                    border.color:"#6433d8"
                }
                anchors{
                   top: parent.top
                   left:parent.left
                    topMargin: (744/1080)*window.height
                    leftMargin: (1250/1920)*window.width

  }          }



                Text {
                     id: loginbutton
                     color: "#ffffff"
                     text: qsTr("login")

                     font.pixelSize: 26
                     font.family: titre.name
                     opacity: 1

                     anchors{
                        top: parent.top
                        left:parent.left
                         topMargin: (765/1080)*window.height
                         leftMargin: (1330/1920)*window.width

                     }}



}


