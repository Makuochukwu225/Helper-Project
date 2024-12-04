import 'package:flutter/foundation.dart';
import 'package:helper_project/projects/provider_usage/src/services/auth_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  login({
    required String username,
    required String password,
    required Function(String? value) callBack,
  }) {
    try {
      // print(username);
      // print(password);
      AuthServices.login(username: username, password: password).then(
        (value) async {
          print(value);

          var pref = await SharedPreferences.getInstance();
          // Used to save the token to the device
          pref.setString("token", value.data!.credentials!.accessToken!);
          // Used to retrieve the token from the device
          // var token =   pref.getString("token");
          // eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY3M2YyNTU1ZDJjNTY2OGJhMTU2NzVmNSIsImZpcnN0bmFtZSI6IklmZWFueWkgIiwibGFzdG5hbWUiOiJCYXNzeSIsInVzZXJuYW1lIjoiQmFzc3kiLCJlbWFpbCI6ImJhc3N5YmFzczRAZ21haWwuY29tIiwicGhvbmVudW1iZXIiOiIrMjM0NzA2MTUzMDg0NCIsImNvdW50cnkiOiJOaWdlcmlhIiwic3RhdGUiOiJBYmlhIiwicm9sZXMiOlsidXNlciJdLCJyYW5rIjoidGFhdGEiLCJpYXQiOjE3MzMyODg1OTQsImV4cCI6MTczNTg4MDU5NCwiaXNzIjoidm9pY2VvZmVhc3QuY29tIn0.3jcx5VwWqY3e39o3Z8B03FI3mfD2CY2q_lz_tAmZhJg;
          // callBack(token);
          callBack("Login Successful");
          notifyListeners();
        },
      ).onError(
        (error, stackTrace) {
          // print(error);
          // callBack(error.toString());
          callBack('Failed to login');
          // debugPrintStack();
          // print(stackTrace);
        },
      );
    } catch (e) {
      print(e);
      callBack('Failed to login');
    }
  }

  // void login({
  //   required String email,
  //   required String password,
  //   required Function(String value) onLoginSuccess,
  //   required Function(String value) onLoginFailed,
  // }) {
  //   try {
  //     AuthServices.login(username: email, password: password).then(
  //       (value) {
  //         SharedPreferences.getInstance().then(
  //           (pref) {
  //             pref.setString("token", value.data!.credentials!.accessToken!);
  //           },
  //         );
  //         onLoginSuccess(value.message!);
  //       },
  //     ).onError(
  //       (error, stackTrace) {
  //         print(error);
  //         onLoginFailed('Failed to login');
  //       },
  //     );
  //   } catch (e) {
  //     print(e);
  //     onLoginFailed('Failed to login');
  //   }
}

void register({
  required String email,
  required String password,
  required Function(String value) onLoginSuccess,
  required Function(String value) onLoginFailed,
}) {
  try {
    AuthServices.login(username: email, password: password).then(
      (value) {
        SharedPreferences.getInstance().then(
          (pref) {
            pref.setString("token", value.data!.credentials!.accessToken!);
          },
        );
        onLoginSuccess(value.message!);
      },
    ).onError(
      (error, stackTrace) {
        print(error);
        onLoginFailed('Failed to login');
      },
    );
  } catch (e) {
    print(e);
    onLoginFailed('Failed to login');
  }
}
// }
// data["data"]["credentials"]["accessToken"]