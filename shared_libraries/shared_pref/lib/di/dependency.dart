import 'package:dependencies/shared_preferences/shared_preferences.dart';
import 'package:dependencies/get_it/get_it.dart';
import 'package:shared_pref/shared_pref/shared_pref.dart';
import 'package:shared_pref/shared_pref/shared_pref_impl.dart';

class SharedPrefDependency {
  SharedPrefDependency() {
    _registerSharedPreferences();
    _registerSharedPref();
    // _sharedPref();
  }
  void _registerSharedPreferences() async {
    final preferences = await SharedPreferences.getInstance();
    locator.registerLazySingleton<SharedPreferences>(() => preferences);
  }

  void _registerSharedPref() => locator.registerLazySingleton<SharedPref>(
      () => SharedPrefImpl(preferences: locator()));

  // void _sharedPref() => locator
  //     .registerLazySingleton(() => SharedPrefImpl(preferences: locator()));
}
