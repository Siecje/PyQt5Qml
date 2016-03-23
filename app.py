import sys
from PyQt5.QtCore import QObject
from PyQt5.QtWidgets import QApplication
from PyQt5.QtQml import QQmlApplicationEngine


def login(one, two, three):
    #return True
    loginPage.success()
    #loader = win.findChild(QObject, "pageLoader")
    #loader.setSource("Page1.qml")

    #mainRect = win.findChild(QObject, "mainRect")
    #mainRect.changeToApp()
    #mainRect.setProperty("state", "app")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()
    context = engine.rootContext()
    context.setContextProperty("main", engine)
    engine.load('Main.qml')
    win = engine.rootObjects()[0]

    loginPage = win.findChild(QObject, "loginPage")
    loginPage.submitLogin.connect(login)

    win.show()
    sys.exit(app.exec_())
