# README

## rifcare_loading Library

### Overview
The `rifcare_loading` is a Flutter package that provides reusable and customizable loading dialogs, offering both simple and modern styles to enhance your app's user experience.


## Screenshots
<img alt="Rifcare Loading Simple" src="https://github.com/ashishpan/rifcare_loading/assets/screenshot1.gif" width="150" />

<img alt="Rifcare Loading Modern" src="https://github.com/ashishpan/rifcare_loading/assets/screenshot2.gif" width="150" />



## Features
- **Simple Loading Dialog**: Displays a minimalistic dialog with a circular progress indicator and optional loading text.
- **Modern Loading Dialog**: Displays a dialog with a customizable Lottie animation and loading prompt.
- Fully customizable: Adjust colors, text, animations, and more.
- Easy to use and integrate into any Flutter app.


## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  rifcare_loading: ^1.0.0
```

Run the following command to fetch the package:

```sh
flutter pub get
```

## Usage

### Import the Package
```dart
import 'package:rifcare_loading/rifcare_loading.dart';
```

### Simple Loading Dialog
Use the `simple` method to display a basic loading dialog with minimal customization:

```dart
void showLoading(BuildContext context) {
  RifcareLoading.simple(
    context: context,
    loadingText: 'Please wait...',
    barrierDismissible: false,
    canPop: false,
    backgroundColor: Colors.white,
    loadingTextColor: Colors.black,
  );
}

```

### Modern Loading Dialog
Use the `modern` method to display a loading dialog with a Lottie animation:

```dart
void showLoading(BuildContext context) {
  RifcareLoading.modern(
    context: context,
    loadingText: 'Please wait...',
    animationPath: 'assets/loading.json',
    barrierDismissible: false,
    canPop: false,
    backgroundColor: Colors.white,
    loadingTextColor: Colors.black,
  );
}
```

## Customization Options

### Common Parameters
| Parameter            | Type      | Default Value    | Description                                    |
|----------------------|-----------|------------------|------------------------------------------------|
| `context`           | `BuildContext` | **Required**    | Build context for the dialog.                |
| `loadingText`       | `String`  | `Loading...`     | Text displayed in the dialog.                |
| `barrierDismissible`| `bool`    | `false`          | Determines if tapping outside closes dialog.  |
| `canPop`            | `bool`    | `false`          | Allows dialog to be dismissed via back button.|
| `backgroundColor`   | `Color`   | `Colors.white`   | Background color of the dialog.              |
| `loadingTextColor`  | `Color`   | `Colors.black`   | Color of the loading text.                   |

### Additional Parameters for `simple`
| Parameter            | Type      | Default Value    | Description                                    |
|----------------------|-----------|------------------|------------------------------------------------|
| `loadingColor`      | `Color`   | `Colors.black`   | Color of the circular progress indicator.     |
| `loadingTextSize`   | `double`  | `16`             | Font size of the loading text.                |

### Additional Parameters for `modern`
| Parameter            | Type      | Default Value    | Description                                    |
|----------------------|-----------|------------------|------------------------------------------------|
| `animationPath`     | `String`  | `assets/loading.json` | Path to the Lottie animation file.         |
| `loadingTextSize`   | `double`  | `20`             | Font size of the loading text.                |

## Example

Here is a complete example of how to use `rifcare_loading`:

```dart
import 'package:flutter/material.dart';
import 'package:rifcare_loading/rifcare_loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingExample(),
    );
  }
}

class LoadingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rifcare Loading Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            RifcareLoading.modern(
              context: context,
              loadingText: 'Fetching data...',
              animationPath: 'assets/loading.json',
            );
          },
          child: Text('Show Modern Loading'),
        ),
      ),
    );
  }
}
```

### License
This project is licensed under the MIT License. See the LICENSE file for more details.

### Contact
For any queries or support, reach out to:
- **Email:** support@rifcare.in
- **Company:** [RIFCARE TECH PVT LIMITED](#)


