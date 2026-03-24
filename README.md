# Assignment 2 – Flutter UI

**Course:** Mobile Application Development (Flutter)
**Institution:** Independent University, Bangladesh (IUB)

---

## Student Information

| Field | Details |
|---|---|
| **Name** | Mymuna Rahman |
| **Student ID** | 2210465 |
| **Email** | 2210465@iub.edu.bd |

---

## Project Overview

A finance/banking mobile UI built with Flutter, replicating a Figma design across 4 pages with bottom navigation implemented using `PageView` and `PageController`.

---

## Pages Implemented

| Page | Title | Status |
|---|---|---|
| Page 1 | Home / Dashboard | ✅ Complete |
| Page 2 | Reports | ✅ Complete |
| Page 3 | Cards | ✅ Complete |
| Page 4 | User Profile | ✅ Complete |

---

## Navigation

Bottom navigation is implemented using **PageView + PageController** as required:

```dart
PageView(
  controller: _pageController,
  physics: const NeverScrollableScrollPhysics(),
  children: [ ... ],
)
```

Tapping a nav item calls `_pageController.jumpToPage(i)`.

---

## Project Structure

```
lib/
├── main.dart               # App entry point
├── main_screen.dart        # PageView + BottomNavigationBar shell
├── pages/
│   ├── home_page.dart      # Page 1 – Home/Dashboard
│   ├── reports_page.dart   # Page 2 – Reports
│   ├── cards_page.dart     # Page 3 – Cards
│   └── profile_page.dart   # Page 4 – User Profile
├── widgets/
│   ├── transaction_tile.dart     # Reusable transaction row
│   └── quick_action_button.dart  # Reusable quick-action button
└── theme/
    └── app_theme.dart      # Colors, text styles, theme config
```

---

## How to Run

```bash
# Install dependencies
flutter pub get

# Run on connected device / emulator
flutter run

# Analyze code
flutter analyze
```

> **Requirements:** Flutter SDK ≥ 3.x, Dart ≥ 3.x
