📚 Look8Me - Flutter Book Reader App
Look8Me is a beautifully crafted Flutter application that allows users to register, explore, and read a diverse collection of novels across multiple genres. Users can search for novels, add their favorites to a personalized My List, and enjoy seamless reading right from their device.

✨ Features:-
🔐 Firebase Authentication for secure user login/register
📚 Explore books by genre
🔍 Search novels easily by keywords
❤️ Add/remove novels to/from My List
☁️ Backend powered by Firebase Realtime Database & Firebase Storage
📄 Integrated PDF viewer for reading novels


📁 Folder Structure
lib/
├── common/
│   ├── model/           # Data models
│   ├── services/        # Firebase and app services
│   └── utils/           # Utilities and helpers
├── routes/              # Navigation routes
├── screens/             # App UI screens
└── main.dart


📦 Packages Used:-
- firebase_core
- firebase_auth
- firebase_database
- firebase_storage
- pdfx
- flutter_bloc
- get_it
- intl
- connectivity_plus
- cached_network_image
- share_plus


🚀 Getting Started

🔧 Prerequisites
Flutter SDK (>= 3.7.0)
Firebase Project setup
Android Studio / VS Code

🛠️ Setup Instructions
- git clone https://github.com/<your-username>/look8me.git
- cd look8me
- flutter pub get 

1. Firebase Setup:
   - Create a Firebase project. 
   - Enable Email/Password Authentication. 
   - Set up Realtime Database and Storage. 
   - Generate firebase_options.dart using FlutterFire CLI. 

2. Important:
   Do NOT commit firebase_options.dart and google-services.json to Git.
   Add to .gitignore:
   - android/app/google-services.json
   - lib/firebase_options.dart

3. Run the App:
   - flutter run


📸 Screenshots
![WhatsApp Image 2025-06-17 at 21 40 58_0a262fd0](https://github.com/user-attachments/assets/57902d3c-0068-450e-8e23-3f615327d0dc)
![WhatsApp Image 2025-06-17 at 22 38 16_b2ffb53f](https://github.com/user-attachments/assets/a4b366ec-ee6f-4636-8b0c-f0df9ed79de5)
![WhatsApp Image 2025-06-17 at 22 38 15_77d5e980](https://github.com/user-attachments/assets/a195ab67-b3be-4aae-98c0-3ca3c1ceb841)
![WhatsApp Image 2025-06-17 at 22 38 14_60a2c8b1](https://github.com/user-attachments/assets/89d379f8-4c1f-4146-a086-1cce878b761d)
![WhatsApp Image 2025-06-17 at 21 40 57_5ebfeeac](https://github.com/user-attachments/assets/b405dc36-45ee-4185-9217-a259fe9c01cd)
![WhatsApp Image 2025-06-17 at 21 40 57_895cb655](https://github.com/user-attachments/assets/a578c43b-1943-4d15-af2f-d00be843afe8)
![WhatsApp Image 2025-06-17 at 21 40 56_f8625502](https://github.com/user-attachments/assets/22081628-2443-4426-a246-4cd4750c19c2)
![WhatsApp Image 2025-06-17 at 21 40 56_8589fa43](https://github.com/user-attachments/assets/1db2e151-35ad-4bf3-aca6-621bf00259e2)


🚧 To Do / Future Enhancements
Offline reading support
Book reviews and rating system
Notifications for new books

🤝 Contribution
Contributions, issues, and feature requests are welcome!
Feel free to fork the repo and submit a PR.

📄 License
This project is open-source and available under the MIT License.
