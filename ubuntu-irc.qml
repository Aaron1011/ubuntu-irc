import QtQuick 2.0
import Ubuntu.Components 0.1
import "js/inpututils.js" as InputUtils

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the .desktop filename
    applicationName: "ubuntu-irc"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    width: units.gu(100)
    height: units.gu(75)

    Page {
        title: i18n.tr("IRC")


        TextArea {
            anchors {
                fill: parent
            }

            readOnly: true
        }

        TextField {
            id: commandInput
            width: parent.width - units.gu(2)
            anchors {
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
            }

            onAccepted: {
                InputUtils.processInput(text)
            }
        }
    }
}
