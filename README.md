# ePurse - Digital Wallet Application

ePurse is a modern digital wallet application built with Flutter, providing secure and convenient financial services.

## Features

- **User Authentication**
  - Secure login system
  - Face recognition login
  - Passcode management

- **Registration & KYC**
  - Multi-step registration process
  - KYC verification
  - Document upload and verification
  - Business details registration
  - Address management

- **Payments & Transactions**
  - Recipient management
  - Transaction processing
  - ATM locator
  - Balance visibility control

- **Notifications**
  - Push notifications
  - Local notifications
  - Test notification support

- **Connectivity**
  - Network status monitoring
  - Offline support

- **Localization**
  - Multi-language support
  - Dynamic language switching

- **Theme Support**
  - Light and dark themes
  - Dynamic theme switching

## Technical Stack

- **Framework**: Flutter
- **State Management**: Flutter Bloc
- **Local Storage**: Hive
- **Push Notifications**: Firebase Cloud Messaging
- **Local Notifications**: Flutter Local Notifications
- **Dependency Injection**: GetIt
- **Network**: HTTP Client
- **Connectivity**: Connectivity Plus

## Project Structure

```bash
lib/
├── core/
│   ├── api/
│   ├── animation/
│   ├── assets/
│   ├── errors/
│   ├── firebase/
│   ├── fonts/
│   ├── icons/
│   ├── injection/
│   ├── language/
│   ├── network/
│   ├── notification/
│   ├── observer/
│   ├── routing/
│   ├── storage/
│   ├── theme/
│   ├── token/
│   └── util/
├── features/
│   ├── banking/
│   ├── bills/
│   ├── connectivity/
│   ├── dashboard/
│   ├── login/
│   ├── payments/
│   ├── registration/
│   └── splash/
```

## Getting Started

1. **Prerequisites**
   - Flutter SDK
   - Dart SDK
   - Android Studio / Xcode
   - Firebase account

2. **Installation**

   ```bash
   git clone [repository-url]
   cd epurse
   flutter pub get
   ```

3. **Running the App**

   ```bash
   flutter run
   ```

## Development

- **Branch Management**
  - Use feature branches for new features
  - Follow Git Flow workflow
  - Use provided scripts for common operations:
    - `merge-feature-to-develop.sh`
    - `merge-develop-to-main.sh`
    - `push-feature.sh`
    - `rebase-feature.sh`

- **Code Style**
  - Follow Flutter style guide
  - Use provided analysis options

## Contributing

Please read [CONTRIBUTING-README.md](CONTRIBUTING-README.md) for details on our code of conduct and the process for submitting pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
# PayseyEpurseMapp
