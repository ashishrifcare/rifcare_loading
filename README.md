
# README

# rifcare_loading Library

## Overview

The `rifcare_loading` is a Flutter package that provides reusable and customizable loading dialogs. It offers simple, modern, and progress-based loading styles to enhance the user experience of your app.

---

## Screenshots

<img alt="Rifcare Loading Simple" src="https://raw.githubusercontent.com/ashishpan/rifcare_loading/refs/heads/main/assets/screenshot1.gif" width="150" />  
<img alt="Rifcare Loading Modern" src="https://raw.githubusercontent.com/ashishpan/rifcare_loading/refs/heads/main/assets/screenshot2.gif" width="150" />  
<img alt="Rifcare Loading Progress" src="https://raw.githubusercontent.com/ashishpan/rifcare_loading/refs/heads/main/assets/screenshot3.png" width="150" />

---

## Features

- **Simple Loading Dialog**: Displays a minimalistic dialog with a circular progress indicator and optional loading text.
- **Modern Loading Dialog**: Includes a customizable Lottie animation and loading prompt.
- **Progress Loading Dialog**: Provides a progress bar with current and total file information.
- Fully customizable: Adjust colors, text, animations, icons, and more.
- Easy integration into any Flutter applications.

---

## Installation

Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  rifcare_loading: ^1.0.4
```

Run the following command to fetch the package:

```bash
flutter pub get
```

---

## Usage

### Import the Package

```dart
import 'package:rifcare_loading/rifcare_loading.dart';
```

---

### Simple Loading Dialog

Use the `simple` method to display a basic loading dialog:

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

---

### Modern Loading Dialog

Use the `modern` method to display a loading dialog with a Lottie animation:

```dart
void showModernLoading(BuildContext context) {
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

---

### Progress Loading Dialog

Use the `progress` method to display a progress dialog with file details:

```dart
void showProgressLoading(BuildContext context) {
  RifcareLoading.progress(
    context: context,
    loadingText: 'Uploading files...',
    iconColor: Colors.blue,
    currentData: '5 MB',
    totalData: '20 MB',
    value: 0.25,
    progressColor: Colors.blue,
  );
}
```

---

## Customization Options

### Common Parameters

| Parameter            | Type             | Default Value      | Description                                  |
|----------------------|------------------|--------------------|----------------------------------------------|
| `context`            | `BuildContext`  | **Required**       | Build context for the dialog.               |
| `loadingText`        | `String`        | `'Loading...'`     | Text displayed in the dialog.               |
| `barrierDismissible` | `bool`          | `false`            | Determines if tapping outside closes dialog.|
| `canPop`             | `bool`          | `false`            | Allows dialog to be dismissed via back button. |
| `backgroundColor`    | `Color`         | `Colors.white`     | Background color of the dialog.             |
| `loadingTextColor`   | `Color`         | `Colors.black`     | Color of the loading text.                  |

---

### Additional Parameters for `simple`

| Parameter        | Type     | Default Value      | Description                                |
|------------------|----------|--------------------|--------------------------------------------|
| `loadingColor`   | `Color`  | `Colors.black`     | Color of the circular progress indicator. |
| `loadingTextSize`| `double` | `16`               | Font size of the loading text.            |

---

### Additional Parameters for `modern`

| Parameter         | Type      | Default Value | Description                                |
|-------------------|-----------|---------------|--------------------------------------------|
| `animationPath`   | `String`  | **Required**  | Path to the Lottie animation file.        |
| `loadingTextSize` | `double`  | `20`          | Font size of the loading text.            |

---

### Additional Parameters for `progress`

| Parameter         | Type      | Default Value | Description                                |
|-------------------|-----------|---------------|--------------------------------------------|
| `iconColor`       | `Color`   | `Colors.red`  | Color of the icon.                        |
| `icon`            | `IconData`| `Icons.timer` | Icon displayed in the dialog.             |
| `currentData`     | `String`  | `'0 KB'`      | Current progress data label.              |
| `totalData`       | `String`  | `'0 KB'`      | Total data label.                         |
| `value`           | `double`  | `0.7`         | Progress value (0.0 to 1.0).              |
| `progressColor`   | `Color`   | `Colors.red`  | Color of the progress bar.                |

---

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

---

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

---

## Contact

For any queries or support, reach out to:

- **Email:** support@rifcare.in
- **Company:** [RIFCARE TECH PVT LIMITED]
```
