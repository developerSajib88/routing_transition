
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:routing_animation/home_screen.dart';
import 'package:routing_animation/second_screen.dart';


class AppRoute{
    GoRouter routes = GoRouter(
        initialLocation: "/",
        routes: [
          GoRoute(
                path: "/",

              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: const HomeScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) =>

                /* // Example of a slide transition in Flutter
                      SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      )
                     */

                    CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)
              ),

              routes: [

                GoRoute(
                  path: "second",
                  pageBuilder: (context, state) => CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: const SecondScreen(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                     /* // Example of a slide transition in Flutter
                      SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: child,
                      )
                     */

                      CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)

                  ),

                ),

              ]

            ),









        ]
    );
}