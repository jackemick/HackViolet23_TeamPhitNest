import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBL_sVwa6VRAijXHQeL0fyxyhoGkdCKjr4",
            authDomain: "hack-violet-2366a.firebaseapp.com",
            projectId: "hack-violet-2366a",
            storageBucket: "hack-violet-2366a.appspot.com",
            messagingSenderId: "707109677833",
            appId: "1:707109677833:web:8819ea1110f1de524481d8",
            measurementId: "G-R9ZM6V87GQ"));
  } else {
    await Firebase.initializeApp();
  }
}
