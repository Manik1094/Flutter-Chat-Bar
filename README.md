# flutter_chat_bar

[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/Manik1094)  

A new Flutter package which helps you to implement Animated chat bar Widget in your app.

The source code is **100% Dart**, and everything resides in the [/lib](https://github.com/Manik1094/Flutter-Chat-Bar/tree/master/lib) folder.

## Show some :heart: and star the repo to support the project

 [![GitHub followers](https://img.shields.io/github/followers/Manik1094.svg?style=social&label=Follow)](https://github.com/Manik1094)  [![Twitter Follow](https://img.shields.io/twitter/follow/ManikGDev.svg?style=social)](https://twitter.com/ManikGDev)

[![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://opensource.org/licenses/Apache-2.0)



## 💻 Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
flutter_chat_bar: <latest_version>
```

Import in your project:
```dart
import 'package:flutter_chat_bar/flutter_chat_bar.dart';
```

## ❔Basic Usage
```dart
class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat Bar'),
      ),
      body: Center(
        child: FlutterChatBar(
          height: 60.0,
          width: 370.0,
          color: Colors.blue[800],
          firstChild:  FirstChild(),
          secondChild:  SecondChild(),
        ),
      ),
    );
  }
}

class FirstChild extends StatelessWidget {
  const FirstChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white30),
      child: SafeArea(
        left: true,
        right: true,
        top: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Message',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

class SecondChild extends StatelessWidget {
  const SecondChild({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white30,
            child: Icon(
              Icons.camera,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white30,
            child: Icon(
              Icons.photo_size_select_actual,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white30,
            child: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
```
## Demo

![flutter_chat_bar](https://user-images.githubusercontent.com/39883547/56526153-93f83700-6569-11e9-8ab5-1e93d5d2de45.gif)


## 👨 Developed By

```
Manik Gupta
```


<a href="https://twitter.com/ManikGDev"><img src="https://user-images.githubusercontent.com/35039342/55471524-8e24cb00-5627-11e9-9389-58f3d4419153.png" width="60"></a>
<a href="https://www.linkedin.com/in/manik-gupta-148465153/"><img src="https://user-images.githubusercontent.com/35039342/55471530-94b34280-5627-11e9-8c0e-6fe86a8406d6.png" width="60"></a>
<a href="https://www.facebook.com/manik.gupta.1884"><img src="https://github.com/aritraroy/social-icons/blob/master/facebook-icon.png?raw=true" width="60"></a>


# 👍 How to Contribute

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

# 📃 License

    Copyright (c) 2019 Manik Gupta

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.dev/).

For help on editing package code, view the [documentation](https://flutter.dev/developing-packages/).
