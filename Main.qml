import QtQuick 2.3
import QtQuick.Controls 1.4


ApplicationWindow {
    Rectangle{ // Cannot have states on ApplicationWindow
        id: mainRect
        objectName: "mainRect"
        width: 800;
        height: 600

        function changeToApp(){
            mainRect.state = "app"
        }

        Loader {
            id: pageLoader
            objectName: "pageLoader"
            source: "Login.qml"
            function loadUsers (){
                pageLoader.source = "Users.qml"
            }
        }
        state: "login"
        states: [
            State {
                name: "login"
                PropertyChanges { target: pageLoader; source: "Login.qml"; }
            },
            State {
                name: "app"
                PropertyChanges { target: pageLoader; source: "Page.qml"; }
            }
        ]
    }
}
