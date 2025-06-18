import '../services/firebase/firebase_auth_service.dart';
import '../services/firebase/firebase_database_service.dart';
import '../services/global_database_helper.dart';
import '../services/locator.dart';

class Utility {

  static Future<void> getAllData() async {
    if(GlobalDatabaseHelper.currentUser == null) {
      final userId = locator.get<FirebaseAuthService>().getUserId();
      GlobalDatabaseHelper.currentUser = await locator.get<FirebaseDatabaseService>().getUser(userId!);
    }
    if(GlobalDatabaseHelper.allNovels.isEmpty) {
      GlobalDatabaseHelper.allNovels = await locator.get<FirebaseDatabaseService>().getNovels();
    }
    if(GlobalDatabaseHelper.allCategories.isEmpty) {
      GlobalDatabaseHelper.allCategories = await locator.get<FirebaseDatabaseService>().getCategories();
    }
  }

  static String getInitials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    if(parts.isNotEmpty) {
      if (parts.length == 1) {
        return parts[0][0].toUpperCase();
      } else {
        return (parts[0][0] + parts[1][0]).toUpperCase();
      }
    }
    return '';
  }

}