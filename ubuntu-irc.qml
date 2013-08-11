import QtQuick 2.0
import Ubuntu.Components 0.1

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
            width: parent.width - units.gu(2)
            anchors {
                bottom: parent.bottom
                horizontalCenter: parent.horizontalCenter
            }

            onAccepted: {
                processInput(text)
            }
        }
    }
    function processInput(input) {
        if (input[0] == '/') {
            processCommand(input.slice(1));
        }
        else {
            processMessage(input);
        }
    }

    function processCommand() {}
    function processMessage() {}
}
