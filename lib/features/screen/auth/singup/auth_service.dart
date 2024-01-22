import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:money_canvas/features/screen/home/main_tab_view.dart';

class AuthService {

  // Google Sign In
  signInWithGoogle() async{

    // begin interactive sign in process 
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    // obtain auth details for user
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    // create a new credential for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    // finally, lets sign in
    await FirebaseAuth.instance.signInWithCredential(credential);

    Get.offAll(() => const MainTabView());
  }
}