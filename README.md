# Assignment 2: Finance App UI
**Course:** Mobile Application Development (Flutter)  
**Institution:** Independent University, Bangladesh (IUB)

---

### Student Information
- **Name:** Mymuna Rahman
- **Student ID:** 2210465
- **Email:** 2210465@iub.edu.bd

---

## Project Overview
The primary objective of this project was to **replicate a provided Figma design** for a modern finance application. The UI is distributed across 4 main pages, ensuring visual consistency and high fidelity to the original design specs.

### Features:
- **Dashboard**: Overview of balance, quick actions, and transaction history.
- **Reports**: Spending breakdown with progress bars.
- **Cards**: Digital card representation and linked account management.
- **Profile**: Personal student details and user bio.

---

## Implementation Details
- **Navigation**: Implemented using `PageView` and `PageController` linked to a `BottomNavigationBar`. Swiping is disabled to ensure navigation is controlled via the menu.
- **Reusable Widgets**: 
    - `AppHeader`: Consolidates the user profile summary and notification bell used across pages.
    - `SummaryCard`: A flexible card widget used for balance, expenses, and profile info boxes.
    - `TransactionTile`: Handles individual transaction rows.
    - `QuickActionButton`: A circular action button core.
- **Theme**: All app colors and common styles are centralized in `app_theme.dart`.

---

## How to Run

1.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
2.  **Run the app**:
    ```bash
    flutter run
    ```

---
*Submitted by Mymuna Rahman (2210465)*
