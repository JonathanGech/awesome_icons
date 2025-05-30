<div align="center">
  <h1> <Img src ="screenshot/awesomeicons_logo.png" width = 500  alt\> Awesome Icons: Free Flutter Icons – AwesomeIcons</h1>
</div>


**AwesomeIcons** is a free, open-source Flutter icon library offering over **5,000 icons**, each available in **6 unique styles**: Bold, Bulk, Linear, Light, Broken, and TwoTone.

Designed to empower both developers and designers, AwesomeIcons provides a comprehensive icon system that’s easy to use, fully scalable, and visually consistent — perfect for building beautiful, modern Flutter apps.

Whether you're creating a dashboard, e-commerce app, social platform, or productivity tool, AwesomeIcons gives you pixel-perfect icons that scale to any screen.

> Trusted by the Flutter community to simplify UI development and enhance design quality.

---
![AwesomeIcons Screenshot](screenshot/awesome_icons.png)

## Table of Contents

- [✨ Features](#-features)
- [📦 Installation](#-installation)
- [🚀 Usage Examples](#-usage-examples)
- [🤝 Contributing](#-contributing)
- [📝 License](#-license)

---

## ✨ Features

- **Massive Collection**: Over **5,000+ icons** included.
- **6 Design Variants**: Choose from **Bold**, **Bulk**, **Linear**, **Light**, **Broken**, and **TwoTone** styles for every icon.
- **Fully Scalable**: Render icons at any size without losing quality.
- **Color Customization**: Apply any color to match your app theme.
- **Consistent Naming**: Developer-friendly naming convention for quick lookup.
- **Optimized for Flutter**: Seamless integration with Flutter’s `Icon` widget.

---

## 📦 Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  awesome_icons: ^0.0.1
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Usage Examples

To use **AwesomeIcons** in your Flutter app, import the package and use the `Icon` widget:

```dart
import 'package:awesome_icons/awesome_icons.dart';

Icon(
  AwesomeIcon.activityBold,
  size: 30.0,
  color: Colors.purple,
),
```

You can also use a custom widget `AwesomeIcons`:

```dart
AwesomeIcons(
  icon: AwesomeIcon.activityBroken,
  size: 40,
  color: Colors.green,
),

```


---

## 🤝 Contributing

We welcome contributions from the community to help improve **AwesomeIcons**. If you have icon suggestions, find bugs, or want to add new features, feel free to:

- Submit a pull request
- Open an issue on [GitHub](https://github.com/your-username/awesome_icons)

Let’s build something awesome together! 🚀

---

## 📝 License

**AwesomeIcons** is licensed under the **MIT License**.

You are free to use, modify, and distribute this icon library in personal and commercial projects.

For more details, see the [LICENSE](LICENSE) file in this repository.

---

<div align="center">
  <h1>Made with ❤️ for the Flutter community</h1>
</div>
