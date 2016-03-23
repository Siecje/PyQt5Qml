On valid login I would like to display the contents of ```Page.qml```. Login validation will be done in Python.

Right now the Python code is just calling ```success()``` in ```Login.qml```. However the application just hangs.

When I stop the application I see ```QMutex``` messages in the console.

```
QMutex: destroying locked mutex
QMutex: destroying locked mutex
```

## Running with Python

```shell
$ python app.py
```

## Running with Just QML

In Login.qml uncomment ```success()``` in the button onClicked function.

```Python
var a = submitLogin(login.text,
                    password.text
                    );
//console.log(a);
//success();
```

```shell
$ qmlscene Main.qml
```

The transition works.
