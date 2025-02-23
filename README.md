# Firebase Beta Testing Example

## Description
This project shows how to integrate firebase distribution to your flutter app for beta testing purposes, 
you can upload the android APK or IOS IPA of your app and start adding and inviting testers in firebase app distribution interface 

## Installation Steps:

1. Creete Firebase Project
   - Go to the Firebase Console after logging with your Gmail
   - Create a Firebase Project, give it a name and proceed with installation wizard
     
2. Add Firebase Tools and CLI to your IDE
   
     - Install Node.js using nvm (the Node Version Manager).
       Installing Node.js automatically installs the npm command tools.
           
     - Install the Firebase CLI via npm by running the following command:
         ~~~
         npm install -g firebase-tools 
         ~~~
     - Authenticate with your Account using Firebase CLI by running:
         ~~~
         firebase login
         ~~~
3. Install and Run FlutterFire CLI
   - From any directory, run this command:
       ~~~
       dart pub global activate flutterfire_cli
       ~~~
   - Then, at the root of your Flutter project directory, run this command:
       ~~~
       flutterfire configure --project=counter-testing-app
       ~~~
   This automatically registers your per-platform apps with Firebase and adds a **lib/firebase_options.dart** configuration file to your Flutter project.
   it also automatically download **google-services.json** for Android 
   
4. Initialize Firebase and add plugins.
   - To initialize Firebase, call Firebase.initializeApp from the firebase_core package with the configuration from your new firebase_options.dart file:
      ~~~
      import 'package:firebase_core/firebase_core.dart';
      import 'firebase_options.dart';
      
      // ...
      
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
      );
      ~~~
   - add **firebase_core: ^3.12.0** Package to pubspec.yaml then Run "flutter pub get" to add it to dependencies
   
5. Firebase app distribution
   -  When you're ready to distribute a pre-release version of your app to testers, build your Android APK using this Command:
      ~~~
      flutter build apk --release
      ~~~
   -  Open the App Distribution page of the Firebase console. Select your Firebase project when prompted.
   -  On the Releases page, select the app you want to distribute from the drop-down menu.
   -  Drag your app's APK file to the console to upload it. in my case flutter app location is counter_app_testing/android/app/outputs/flutter_apk/app-release.apk
   -  When the upload completes, specify the tester groups and individual testers you want to receive the build. Then, add release notes for the build.
   -  See Manage testers for more on creating tester groups.
   -  Click Distribute to make the build available to testers. The tester automatically receives an email invitation to test the app.
   -  (Optional) To share links to specific releases with testers who have access to those releases, click the Link icon to copy the release link to the clipboard.
     
## Application Screenshots: 
![beta1](https://github.com/user-attachments/assets/386f3c26-19a0-4cce-a746-a824316242b7)
![beta2](https://github.com/user-attachments/assets/fd80a70b-6fdc-466c-a8be-3bc43fa476d9)
![beta4](https://github.com/user-attachments/assets/b4cfc63a-35cc-4cfb-9082-a5330551b3b9)
![beta3](https://github.com/user-attachments/assets/b3aac88c-1b22-4fb4-8210-6b0693dd05b9)

## References:
https://firebase.google.com/docs/app-distribution/android/distribute-console


