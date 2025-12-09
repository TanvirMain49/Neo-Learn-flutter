# NeoLearn Flutter App

A Flutter project with a **Welcome page**, **Sign Up**, and **Sign In** functionality, integrated with **Supabase** for authentication.

---

## Getting Started

This project is a starting point for a Flutter application with user authentication.

- **Welcome Page:**  
  The first screen users see. It displays the **NeoLearn logo** prominently and provides two main action buttons:
    1. **Sign Up** → Navigate to the registration page.
    2. **Sign In** → Navigate to the login page.

  This screen sets the tone for the app and provides a clear path for new and returning users.

  **Screenshot:**  
  <img src="https://res.cloudinary.com/dvrn5hqsv/image/upload/v1765292624/iqjbpgwgxbaplinefv44.png" alt="Welcome Page" width="400"/>

- **Sign Up Page:**  
  Allows new users to register using email and password. Includes:
    - Email input
    - Password & confirm password fields
    - Validation for empty fields and password match
    - Snackbar messages for errors and success
    - Supabase `signUp()` integration

  **Screenshot:**  
  <img src="https://res.cloudinary.com/dvrn5hqsv/image/upload/v1765292625/hlh12eq26wtwb8wb9xka.png" alt="Sign Up Page" width="400"/>

- **Sign In Page:**  
  Allows existing users to log in. Features:
    - Email & password input
    - Validation for empty fields
    - Supabase `signInWithPassword()` integration
    - Error feedback via Snackbars

  **Screenshot:**  
  <img src="https://res.cloudinary.com/dvrn5hqsv/image/upload/v1765292624/wp7pvpv9qazbhyhsynvd.png" alt="Sign In Page" width="400"/>



### Resources

If you are new to Flutter:

- [Flutter: Write your first app](https://docs.flutter.dev/get-started/codelab)
- [Flutter Cookbook](https://docs.flutter.dev/cookbook)

If you are new to Supabase:

- [Supabase Flutter Docs](https://supabase.com/docs/guides/with-flutter)

---

## Getting Started With This Project

1. Clone the repository:
```bash
git clone https://github.com/TanvirMain49/Neo-Learn-flutter
