# ☕ Fenjan App - Smart Coffee Shop Management System

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![BLoC](https://img.shields.io/badge/BLoC-State%20Management-blue?style=for-the-badge)
![Clean Architecture](https://img.shields.io/badge/Clean-Architecture-green?style=for-the-badge)

A comprehensive coffee shop management system built with Flutter, implementing clean architecture principles and SOLID design patterns. The app features a complete order management system with real-time analytics and interactive reporting dashboard.
## 📱 Demo


https://github.com/user-attachments/assets/f8c7c3d1-feb1-4c3e-9c21-dacd4708f932


## 📋 Table of Contents

- [🌟 Features](#-features)
- [🏗️ Architecture](#️-architecture)
- [🎯 Smart Ahwa Module](#-smart-ahwa-module)
- [📱 Screenshots](#-screenshots)
- [🛠️ Tech Stack](#️-tech-stack)
- [📦 Dependencies](#-dependencies)
- [🏛️ Project Structure](#️-project-structure)
- [🧪 Testing](#-testing)
- [📚 Documentation](#-documentation)

## 🌟 Features

### 📊 Smart Analytics Dashboard
```
┌─────────────────────────────────────┐
│       Reports & Analytics           │
│   Today's performance overview      │
├─────────────────────────────────────┤
│                                     │
│  📊 PERFORMANCE METRICS             │
│  • Revenue: $XXX.XX                 │
│  • Total Orders: XX                 │  
│  • Items Sold: XX                   │
│  • Top 5 Selling Drinks             │
│                                     │
├─────────────────────────────────────┤
│                                     │
│  🛠️  ORDER MANAGEMENT               │
│  • Pending (X orders)               │
│  • In Progress (X orders)           │
│  • Completed (X orders)             │
│  • Cancelled (X orders)             │
│                                     │
└─────────────────────────────────────┘
```

### 🎯 Core Features

- **📋 Order Management**: Complete CRUD operations for coffee shop orders
- **👥 Customer Management**: Customer information and order history
- **📈 Real-time Analytics**: Performance metrics and business insights
- **🏆 Top Selling Items**: Track best-performing drinks and products
- **📱 Interactive Dashboard**: Live order status updates and management
- **🔄 Order Status Tracking**: Pending → In Progress → Completed/Cancelled
- **💰 Revenue Tracking**: Daily, weekly, and monthly financial reports
- **☕ Drink Management**: Comprehensive drink catalog with customization

### 🛠️ Order Status Management

| Status | Color | Actions Available |
|--------|-------|-------------------|
| 🟠 **Pending** | Orange | ▶️ Start, ❌ Cancel |
| 🔵 **In Progress** | Blue | ✅ Complete, ❌ Cancel |
| 🟢 **Completed** | Green | 👁️ View Details |
| 🔴 **Cancelled** | Red | 👁️ View Details |

## 🏗️ Architecture

This project implements **Clean Architecture** with clear separation of concerns:

```
lib/
├── 🎯 core/                    # Core utilities and constants
│   ├── constants/              # App-wide constants
│   ├── di/                     # Dependency injection setup
│   ├── routing/               # Navigation and routing
│   └── themes/                # App theming
├── 🏪 features/               # Feature modules
│   └── smart_ahwa/            # Coffee shop management
│       ├── 🧠 domain/         # Business logic layer
│       │   ├── entities/      # Business models
│       │   ├── repositories/  # Data contracts
│       │   └── services/      # Business rules
│       ├── 💾 data/           # Data access layer
│       │   ├── repositories/  # Data implementations
│       │   └── services/      # External services
│       └── 🎨 presentation/   # UI layer
│           ├── cubit/         # State management
│           ├── views/         # Screens
│           └── widgets/       # Reusable components
└── 📱 main.dart              # App entry point
```

### 🔑 Key Architecture Patterns

- **🎯 SOLID Principles**: [95% compliance](./SMART_AHWA_SOLID_ANALYSIS.md)
- **🏛️ Clean Architecture**: Separation of concerns across layers
- **🔄 BLoC Pattern**: Reactive state management with Cubit
- **💉 Dependency Injection**: Service locator pattern with GetIt
- **🏪 Repository Pattern**: Abstract data access layer
- **📦 Service Pattern**: Business logic encapsulation

## 🎯 Smart Ahwa Module

The Smart Ahwa module is the core feature implementing a complete coffee shop management system.

### 🎮 Interactive Features

- **👆 Tap Orders**: View detailed order information
- **🔄 Status Changes**: Interactive buttons for order progression
- **📊 Live Updates**: Real-time metrics and order counts
- **🔍 Order Details**: Comprehensive order information dialogs
- **💳 Payment Tracking**: Order totals and revenue calculation

## 📱 Screenshots
| Dashboard | Add Order | Reports & Analytics |
|-----------|-----------|-------------------|
| 📊 Live order tracking | ➕ Create new orders | 📈 Performance metrics |
| 🔄 Status management | ☕ Drink selection | 🏆 Top selling items |
| 👥 Customer overview | 💰 Price calculation | 📋 Order management |

<!-- Table 1 -->
<table>
  <tr>
    <td><img width="600px" src="https://github.com/user-attachments/assets/15889826-9c7c-4094-a810-a8399951a4a4"></td>
    <td><img width="600px" src="https://github.com/user-attachments/assets/b2fa8397-7f8a-4516-a443-e86c26f49920"></td>
    <td><img width="600px" src="https://github.com/user-attachments/assets/2c07c736-6059-4f13-a958-8d0b782da03e"></td>
    <td><img width="600px" src="https://github.com/user-attachments/assets/3832f396-a9f8-4dfb-8de8-f90c2a5bd965"></td>
    <td><img width="600px" src="https://github.com/user-attachments/assets/2055c787-a4fd-49a4-914c-eced7ddf9807"></td>
  </tr>
</table>

<!-- Table 2 -->
<table>
  <tr>
    <td><img width="600px" src="https://github.com/user-attachments/assets/98de491c-265e-4f14-b5de-243e7afc33af"></td>
    <td><img width="600px" src="https://github.com/user-attachments/assets/cd7ea492-84ca-4808-8449-a14f0c055616"></td>
    <td><img width="600px" src="https://github.com/user-attachments/assets/dd428bac-3b72-4aba-9a5c-471558b71dae"></td>
    <td><img width="600px" src="https://github.com/user-attachments/assets/2e7cdf6a-3e42-4e3b-8ac0-69bdebb63579"></td>
  </tr>
</table>


## 🛠️ Tech Stack

### 🎯 Core Technologies
- **Flutter 3.7.2+** - UI framework
- **Dart 3.0+** - Programming language
- **BLoC/Cubit** - State management
- **GetIt** - Dependency injection
- **Freezed** - Immutable data classes
- **Go Router** - Navigation

### 📦 Key Packages
- **flutter_bloc** - State management solution
- **get_it** - Service locator for dependency injection
- **freezed** - Code generation for data classes
- **gap** - Spacing widgets
- **flutter_screenutil** - Responsive design
- **cached_network_image** - Image caching
- **device_preview** - Device testing

### 🎨 UI & Design
- **Custom Design System** - Consistent theming
- **Responsive Layout** - Multi-screen support
- **Arabic Localization** - RTL support
- **Material Design 3** - Modern UI components

## 📦 Dependencies

<details>
<summary>📋 View Complete Dependencies</summary>

```yaml
dependencies:
  flutter:
    sdk: flutter
  # State Management
  flutter_bloc: ^9.1.1
  
  # Dependency Injection
  get_it: ^8.0.3
  
  # Code Generation
  freezed_annotation: ^3.1.0
  
  # UI & Navigation
  go_router: ^15.1.1
  flutter_screenutil: ^5.9.3
  gap: ^3.0.1
  
  # Networking & Data
  dio: ^5.8.0+1
  cached_network_image: ^3.4.1
  
  # Utilities
  equatable: ^2.0.7
  dartz: ^0.10.1
  intl: 0.20.2

dev_dependencies:
  # Code Generation
  freezed: ^3.1.0
  build_runner: ^2.4.6
  
  # Testing
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```
</details>

## 🏛️ Project Structure

```
fenjan_app/
├── 📁 lib/
│   ├── 🎯 core/
│   │   ├── constants/
│   │   │   └── app_colors.dart           # Color constants
│   │   ├── di/
│   │   │   └── service_locator.dart      # Dependency injection
│   │   ├── routing/
│   │   │   └── app_router.dart           # Navigation setup
│   │   └── utils/
│   │       └── app_styles.dart           # Text styles
│   ├── 🏪 features/
│   │   └── smart_ahwa/
│   │       ├── 🧠 domain/
│   │       │   ├── entities/
│   │       │   │   ├── order.dart        # Order entity
│   │       │   │   ├── customer.dart     # Customer entity
│   │       │   │   └── drink_type.dart   # Drink entity
│   │       │   ├── repositories/
│   │       │   │   └── order_repository.dart
│   │       │   └── services/
│   │       │       ├── order_service.dart
│   │       │       ├── report_service.dart
│   │       │       └── notification_service.dart
│   │       ├── 💾 data/
│   │       │   ├── repositories/
│   │       │   │   └── in_memory_order_repository.dart
│   │       │   └── services/
│   │       │       ├── order_service_impl.dart
│   │       │       ├── report_service_impl.dart
│   │       │       └── console_notification_service.dart
│   │       └── 🎨 presentation/
│   │           ├── cubit/
│   │           │   ├── orders_cubit.dart
│   │           │   ├── reports_cubit.dart
│   │           │   └── smart_ahwa_nav_cubit.dart
│   │           ├── views/
│   │           │   ├── dashboard_view.dart
│   │           │   ├── add_order_view.dart
│   │           │   ├── reports_view.dart
│   │           │   └── smart_ahwa_main_view.dart
│   │           └── widgets/
│   │               ├── 📊 reports/
│   │               │   ├── stat_card.dart
│   │               │   ├── order_status_card.dart
│   │               │   └── comprehensive_reports_display.dart
│   │               ├── 📋 orders/
│   │               │   ├── pending_orders_section.dart
│   │               │   └── order_summary_card.dart
│   │               └── 🎨 common/
│   │                   ├── smart_ahwa_bottom_nav.dart
│   │                   └── form_field_wrapper.dart
│   └── 📱 main.dart
├── 📄 pubspec.yaml                       # Dependencies
├── 📋 README.md                          # Project documentation
└── 📊 SMART_AHWA_SOLID_ANALYSIS.md      # Architecture analysis
```

## 🧪 Testing

### Unit Tests
```bash
flutter test
```

### Widget Tests
```bash
flutter test --coverage
```

### Integration Tests
```bash
flutter drive --target=test_driver/app.dart
```

### Test Structure
```
test/
├── unit/
│   ├── domain/
│   ├── data/
│   └── presentation/
├── widget/
└── integration/
```

## 📚 Documentation

- **📊 [SOLID Analysis](./SMART_AHWA_SOLID_ANALYSIS.md)** - Architecture compliance report
- **🎯 Domain Models** - Business entity documentation
- **🔧 API Reference** - Service interface documentation
- **🎨 Widget Catalog** - Reusable component library
