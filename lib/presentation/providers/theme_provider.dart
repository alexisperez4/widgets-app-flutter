import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


// Listado de colores inmutable (datos inmutables)
final colorListProvider = Provider((ref) => colorList);

// Un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//Un simple entero
final selectedIndexColorProvider = StateProvider((ref) => 0);


// Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);


// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  
  
  // STATE= Estado = new AppTheme()
  ThemeNotifier(): super( AppTheme() );

  void toggleDarkMode() {
    state = state.copyWith( isDarkMode: !state.isDarkMode );
  }

  void changeColorIndex (int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
  

}