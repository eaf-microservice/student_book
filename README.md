# Student Books App 📚

## كتاب الطالب

A comprehensive mobile application designed for Safwa University students, providing access to academic materials, timetables, and learning resources in Arabic.

## Features ✨

### 📖 Academic Materials

- **Books by Academic Level**: Organized content for each year (الفرقة الأولى - الفرقة الرابعة)
- **Semester Division**: Separate materials for Semester 1 (S1) and Semester 2 (S2)
- **PDF Viewer**: Integrated Syncfusion PDF viewer for seamless document reading
- **Offline Access**: Download and access materials without internet connection

### 📅 Timetables

- **Year-wise Schedules**: Timetables for each academic year
- **Visual Display**: Clear presentation of class schedules and timings

### 🌐 Connectivity & Offline Mode

- **Network Detection**: Automatic detection of internet connectivity
- **Offline Mode**: Dedicated offline interface when network is unavailable
- **Seamless Switching**: Smooth transition between online and offline states

### 📱 User Experience

- **Arabic Interface**: Fully localized user interface in Arabic
- **Splash Screen**: Animated splash screen with university branding
- **Material Design**: Modern, intuitive UI following Material Design principles
- **Ad Integration**: Non-intrusive Google AdMob integration for monetization

## Screenshots 📸

<!-- Add screenshots here when available -->

## Installation 🚀

### Prerequisites

- Flutter SDK (>=3.0.0 <4.0.0)
- Dart SDK
- Android Studio or VS Code with Flutter extensions
- Android SDK (API level 21+)

### Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/eaf-microservice/student_books.git
   cd student-books-app
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Configure AdMob (Optional)**
   - Add your AdMob app ID to `android/app/src/main/AndroidManifest.xml`
   - Update banner ad unit IDs in `lib/model/ad_helper.dart`

4. **Run the app**
   ```bash
   flutter run
   ```

### Build APK

```bash
flutter build apk --release
```

## Project Structure 📁

```
lib/
├── main.dart                 # App entry point with routing
├── Pages/
│   ├── home_page.dart        # Main home screen
│   ├── affichage_livres.dart # Books display page
│   ├── emplois_des_temps.dart # Timetables page
│   ├── level_one.dart        # First year materials
│   ├── level_two.dart        # Second year materials
│   ├── level_three.dart      # Third year materials
│   ├── level_four.dart       # Fourth year materials
│   ├── hors_connexion.dart   # Offline mode page
│   └── open_book.dart        # PDF viewer page
├── model/
│   ├── ad_helper.dart        # AdMob configuration
│   └── banner_ad_widget.dart # Banner ad widget
└── config/
    └── admob_config.dart     # AdMob settings

assets/
├── images/                   # App icons and branding
└── couvreBooks/              # Book covers organized by year
    ├── Annee1/
    ├── Annee2/
    └── Annee3/
```

## Dependencies 📦

### Core Dependencies

- **Flutter SDK**: UI framework
- **animated_splash_screen**: Animated splash screen
- **syncfusion_flutter_pdfviewer**: PDF document viewer
- **url_launcher**: Launch URLs and external applications
- **connectivity_plus**: Network connectivity detection
- **google_mobile_ads**: AdMob integration

### Development Dependencies

- **flutter_test**: Testing framework
- **flutter_lints**: Code linting

## Configuration ⚙️

### AdMob Setup

1. Create an AdMob account and get your App ID
2. Add the App ID to `android/app/src/main/AndroidManifest.xml`:

   ```xml
   <meta-data
       android:name="com.google.android.gms.ads.APPLICATION_ID"
       android:value="ca-app-pub-XXXXXXXXXXXXXXXX~XXXXXXXXXX"/>
   ```

3. Update ad unit IDs in `lib/model/ad_helper.dart`

### Launcher Icons

Icons are automatically generated using flutter_launcher_icons. The source image is located at `assets/images/logo.png`.

## Contributing 🤝

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Issues & Support 🆘

If you encounter any issues or have suggestions:

1. Check the [Issues](../../issues) page
2. Create a new issue with detailed description
3. Include device information, Flutter version, and error logs

## License 📄

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments 🙏

- **Safwa University** for the academic content and branding
- **Flutter Community** for the amazing framework
- **Syncfusion** for the PDF viewer component
- **Google AdMob** for monetization support

---

**Developed with ❤️ for Safwa University students**
