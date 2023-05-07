import 'package:bookly_app/features/home/presentation/views/bookDetailsView.dart';
import 'package:bookly_app/features/home/presentation/views/homeView.dart';
import 'package:bookly_app/features/search/presentation/views/searchView.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presentation/views/splashView.dart';
abstract class appRouter{
 static final KBookDetails = '/bookDetails';
 static final KHomeView = '/homeView';
 static final KsearchView = '/searchView';
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => splashView(),
      ),
      GoRoute(path: KHomeView,
        builder: (context, state) => homeView(),
      ),
      GoRoute(path: KBookDetails,
        builder: (context, state) => bookDetailsView(),
      ),
      GoRoute(path: KsearchView,
        builder: (context, state) => searchView(),
      ),
    ],
  );
}