import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.0

//ApplicationWindow {
Item {
    id: loginPage
    objectName: "loginPage"
    width: 800;
    height: 600;

    signal submitLogin(string login,
                       string password
                       )

    ColumnLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.margins: 3
        spacing: 3
        Column {
            spacing: 20
            anchors.horizontalCenter: parent.horizontalCenter

            TextField {
                id: login
                objectName: "login"
                placeholderText: qsTr("Login")
                focus: true
                Layout.fillWidth: true
                onAccepted: {
                    btnSubmit.clicked()
                }
            }

            TextField {
                id: password
                objectName: "password"
                placeholderText: qsTr("Password")
                echoMode: TextInput.Password
                Layout.fillWidth: true
                onAccepted: {
                    btnSubmit.clicked()
                }
            }

            Button {
                id: btnSubmit
                objectName: "btnSubmit"
                text: qsTr("Login")
                Layout.fillWidth: true
                onClicked: {
                    var a = submitLogin(login.text,
                                        password.text
                                        );
                    //console.log(a);
                    //success();
                }
            }

            Label {
                objectName: "error"
                Layout.fillWidth: true
            }
        }
    }
    function success(){
        mainRect.changeToApp()
    }
}
