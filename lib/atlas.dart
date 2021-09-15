import 'presentation/screens/choose_to_learn_screen.dart';
import 'presentation/screens/credits_screen.dart';
import 'presentation/screens/home_screen.dart';
import 'presentation/screens/landing_screen.dart';
import 'presentation/screens/myths_intro_screen.dart';
import 'presentation/screens/myths_screen.dart';
import 'presentation/screens/sources_screen.dart';
import 'presentation/screens/stem_all_way_screen.dart';

export 'presentation/screens/choose_to_learn_screen.dart';
export 'presentation/screens/credits_screen.dart';
export 'presentation/screens/home_screen.dart';
export 'presentation/screens/landing_screen.dart';
export 'presentation/screens/myths_intro_screen.dart';
export 'presentation/screens/myths_screen.dart';
export 'presentation/screens/sources_screen.dart';
export 'presentation/screens/stem_all_way_screen.dart';

class Atlas {
  static final routes = {
    '/': (_) => const LandingScreen(),
    HomeScreen.id: (_) => const HomeScreen(),
    ChooseToLearnScreen.id: (_) => const ChooseToLearnScreen(),
    StemAllTheWayScreen.id: (_) => const StemAllTheWayScreen(),
    MythsIntroScreen.id: (_) => const MythsIntroScreen(),
    MythsScreen.id: (_) => const MythsScreen(),
    SourcesScreen.id: (_) => const SourcesScreen(),
    CreditsScreen.id: (_) => const CreditsScreen(),
  };
}
