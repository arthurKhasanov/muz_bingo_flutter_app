# 🎵 MuzBingo App

MuzBingo is a music-based bingo application built with Flutter, following clean architecture principles. It allows users to:

- Add songs one by one
- Manage a list of all songs (CRUD)
- Mark songs as selected
- Generate 90 unique bingo cards based on selected songs

---

## 🧱 Architecture

The app is structured using **Clean Architecture** and **SOLID** principles:

```
lib/
├── core/                # Failures, usecases, mixins
├── data/                # Hive model, datasource, repository impl
├── domain/              # Entity, abstract repository, usecases
├── presentation/        # Bloc, UI
├── l10n/                # Localization
├── injection.dart       # Service locator (GetIt)
└── main.dart            # App entry point
```

---

## 🛠️ Technologies

- Flutter 3.22+
- Hive (local DB)
- Freezed (entities)
- Bloc (UI state management)
- Mockito (unit tests)
- dartz (`Either<Failure, Result>`)
- GetIt (dependency injection)
- Flutter Intl (i18n)

---

## ✅ Test Coverage

Fully tested repository layer:

- `getSongs()`
- `saveSong()`
- `updateSong()`
- `deleteSong()`
- `toggleSelection()`
- `getSelectedSongs()`

> All tests follow AAA structure with `mockito`, `argThat`, `Right/Left`, and `safeCallMixin`.

---

## 🚀 Getting Started

```bash
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter test
```

---

## 📋 Roadmap

- [ ] Generate 90 unique bingo cards
- [ ] Render bingo grid on screen
- [ ] Track revealed songs during game
- [ ] Export bingo cards as PDF
- [ ] Add dark theme support

---

## 🧑‍💻 Author

Crafted with ❤️ by Flutter developer [@Arthur Khasanov](https://github.com/arthurKhasanov)
