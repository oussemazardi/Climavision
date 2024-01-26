import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

import "screens"
import "components"
ApplicationWindow {
    id:window
    width: 1920
    height: 1080
    visible: true
    Login{
        height: parent.height
        width:parent.width
        id:login}

    StackView {
        id: stackView
        initialItem: login
        anchors.fill: parent
        replaceEnter:Transition
                {PropertyAnimation{
                        property:"y"
                        from:-(window.height)
                        duration: 200

                }

    }

        replaceExit:Transition
                {
                    PropertyAnimation{
                        property:"x"
                        from:-(window.height)
                        duration: 200

                }

    }

   }



}
