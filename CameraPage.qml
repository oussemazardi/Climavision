import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
//import  "../components"
Rectangle {
    color:"#ffffff"
    property bool loggedIn: true // Ajout d'une propriété pour
    width: (1920/1920) *window.width
    height: (1080/1080) *window.height
///fonts family/
FontLoader {
    id: font_titre
    source:"qrc:/fonts/CooperBlackRegular.ttf" // Update the p
}
FontLoader {
    id: titre
    source: "qrc:/fonts/CooperBlackRegular.ttf"
}
Rectangle{
    width: (1920/1920) *window.width
    height: (110/1080) *window.height
    border.width: 4
    border.color:"#199faa"
    color:"#04689a"
anchors{
   top: parent.top
   left:parent.left
    topMargin: (0/1080)*window.height
    leftMargin: (0/1920)*window.width
}}
Image {

    id: log
    width: (100/1920) *window.width
    height: (100/1080) *window.height
    source:"qrc:/assets/logoo.png"
    anchors{
        left:parent.left
        top: parent.top
         topMargin: (5/1080) *window.height
         leftMargin: (1620/1920) *window.width
    }
}
Image {

    id: nice
    width: (1920/1920) *window.width
    height: (970/1080) *window.height
    source:"qrc:/assets/cam.png"
    anchors{
        left:parent.left
        top: parent.top
         topMargin: (110/1080) *window.height
         leftMargin: (0/1920) *window.width
    }
}

Text{
     id: header
     color: "#ffffff"
     text:  "Welcome, "

     font.pixelSize: 26
     font.family: titre.name
     opacity: 1

     anchors{
        top: parent.top
        left:parent.left
         topMargin: (40/1080)*window.height
         leftMargin: (30/1920)*window.width

 }
}




Button {

        id: camp
        width: (250/1920) *window.width
        height: (69/1080) *window.height
        onClicked: {



        }
        background:Rectangle {
            //color:"transparent"
            width: (255/1920) *window.width
            height: (70/1080) *window.height
            color: "lightblue"
            radius:60
            border.width: 1
            border.color:"#199faa"
        }
        anchors{
            left: parent.left
            top: parent.top
            leftMargin: (835/1920) *window.width
            topMargin: (345/1080) *window.height

        }}



        Text {
             id: camg
             color: "#1776c3"
             text: qsTr("appuyez ici pour ouvrir la camera ")

             font.pixelSize: 26
             font.family: titre.name
             opacity: 1

             anchors{
                top: parent.top
                left:parent.left
                 topMargin: (275/1080)*window.height
                 leftMargin: (760/1920)*window.width

             }}



        Image {

            id: po
            width: (50/1920) *window.width
            height: (50/1080) *window.height
            source:"qrc:/assets/po.png"
            anchors{
                left:parent.left
                top: parent.top
                 topMargin: (355/1080) *window.height
                 leftMargin: (935/1920) *window.width
            }
        }


    Button {

            id: loginbutto
            width: (250/1920) *window.width
            height: (69/1080) *window.height
            onClicked: {
             stackView.push("TemperaturePage.qml")


            }
            background:Rectangle {
                //color:"transparent"
                width: (250/1920) *window.width
                height: (69/1080) *window.height
                color: "#1776c3"
                border.width: 1
                border.color:"#199faa"
            }
            anchors{
                left: parent.left
                top: parent.top
                leftMargin: (0/1920) *window.width
                topMargin: (110/1080) *window.height

            }}



            Text {
                 id: temperature
                 color: "#ffffff"
                 text: qsTr("Temperature")

                 font.pixelSize: 26
                 font.family: titre.name
                 opacity: 1

                 anchors{
                    top: parent.top
                    left:parent.left
                     topMargin: (125/1080)*window.height
                     leftMargin: (37/1920)*window.width

                 }}

            Button {

                    id: camera
                    width: (250/1920) *window.width
                    height: (69/1080) *window.height
                    onClicked: {
                     stackView.push("CameraPage.qml")


                    }
                    background:Rectangle {
                        //color:"transparent"
                        width: (250/1920) *window.width
                        height: (69/1080) *window.height
                        color: "#1776c3"
                        border.width: 1
                        border.color:"#199faa"
                    }
                    anchors{
                        left: parent.left
                        top: parent.top
                        leftMargin: (250/1920) *window.width
                        topMargin: (110/1080) *window.height

                    }}



                    Text {
                         id: camerat
                         color: "#ffffff"
                         text: qsTr("Camera")

                         font.pixelSize: 26
                         font.family: titre.name
                         opacity: 1

                         anchors{
                            top: parent.top
                            left:parent.left
                             topMargin: (130/1080)*window.height
                             leftMargin: (320/1920)*window.width

                         }}
}
