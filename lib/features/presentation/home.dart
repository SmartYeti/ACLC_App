import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _SidebarXExampleAppState();
}

class _SidebarXExampleAppState extends State<HomePage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final isSmallScreen = MediaQuery.of(context).size.width < 600;

          return Scaffold(
            resizeToAvoidBottomInset: false,
            key: _key,

            appBar: isSmallScreen
                ? AppBar(
                    centerTitle: true,
                    backgroundColor: canvasColor,
                    leading: IconButton(
                      onPressed: () {
                        _key.currentState?.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: textColor,
                      ),
                    ),
                    actions: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Tooltip(message: 'Student',
                        
                        textStyle: TextStyle(color: textColor),
                        child: Icon(Icons.person, color: textColor,),),
                      )
                    ],

                    
                  )
                : null,

            drawer: SidebarX(
              controller: _controller,
              theme: SidebarXTheme(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: canvasColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                hoverColor: scaffoldBackgroundColor,
                textStyle: TextStyle(color: white.withOpacity(0.7)),
                selectedTextStyle: const TextStyle(color: white),
                itemTextPadding: const EdgeInsets.only(left: 20),
                selectedItemTextPadding: const EdgeInsets.only(left: 20),
                itemDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: canvasColor),
                ),
                selectedItemDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: actionColor.withOpacity(0.37),
                  ),
                  gradient: const LinearGradient(
                    colors: [accentCanvasColor, canvasColor],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.28),
                      blurRadius: 30,
                    )
                  ],
                ),
                iconTheme: IconThemeData(
                  color: white.withOpacity(0.7),
                  size: 20,
                ),
                selectedIconTheme: const IconThemeData(
                  color: white,
                  size: 20,
                ),
              ),
              extendedTheme: const SidebarXTheme(
                width: 150,
                decoration: BoxDecoration(
                  color: canvasColor,
                ),
              ),
              // footerDivider: divider,
              headerBuilder: (context, extended) {
                return const SizedBox(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: 
                    Image(image: AssetImage("images/ACLC_Logo.png"))
                    // Text('Image', selectionColor: Colors.white,)
                    // Image.asset('assets/images/avatar.png')
                    ,
                  ),
                );
              },
              items: [
                SidebarXItem(
                  iconWidget: 
                  const Icon(
                    Icons.dashboard_outlined, 
                    color: textColor,),
                  // icon: Icons.dashboard,
                  
                  label: 'Dashboard',
                  onTap: () {
                    // debugPrint('Home');
                  },
                ),
                // SidebarXItem(
                //   icon: Icons.search,
                //   label: 'Search',
                //   onTap: () {
                //     // debugPrint('Search');
                //   },
                // ),
                SidebarXItem(
                  iconWidget: 
                  const Icon(
                    Icons.info_outline, 
                    color: textColor,),
                  // icon: Icons.dashboard,
                  
                  label: 'Info',
                  onTap: () {
                    // debugPrint('Home');
                  },
                ),
                // const SidebarXItem(
                //   icon: Icons.favorite,
                //   label: 'Favorites',
                // ),
              ],
              footerItems: [
                SidebarXItem(
                  iconWidget: 
                  const Icon(
                    Icons.power_settings_new_rounded, 
                    color: textColor,),
                  // icon: Icons.dashboard,
                  
                  label: 'Logout',
                  onTap: () {
                    // debugPrint('Home');
                  },
                )
              ],
            ),
            // ExampleSidebarX(controller: _controller)

            body: Row(
              children: [
                if (!isSmallScreen)
                  SidebarX(
                    controller: _controller,
                    theme: SidebarXTheme(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: canvasColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hoverColor: scaffoldBackgroundColor,
                      textStyle:
                          TextStyle(color: Colors.white.withOpacity(0.7)),
                      selectedTextStyle: const TextStyle(color: Colors.white),
                      itemTextPadding: const EdgeInsets.only(left: 30),
                      selectedItemTextPadding: const EdgeInsets.only(left: 30),
                      itemDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: canvasColor),
                      ),
                      selectedItemDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: actionColor.withOpacity(0.37),
                        ),
                        gradient: const LinearGradient(
                          colors: [accentCanvasColor, canvasColor],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.28),
                            blurRadius: 30,
                          )
                        ],
                      ),
                      iconTheme: IconThemeData(
                        color: Colors.white.withOpacity(0.7),
                        size: 20,
                      ),
                      selectedIconTheme: const IconThemeData(
                        color: textColor,
                        size: 20,
                      ),
                    ),
                    extendedTheme: const SidebarXTheme(
                      width: 200,
                      decoration: BoxDecoration(
                        color: canvasColor,
                      ),
                    ),
                    // footerDivider: divider,
                    headerBuilder: (context, extended) {
                      return const SizedBox(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: 
                    Image(image: AssetImage("images/ACLC_Logo.png"))
                    // Text('Image', selectionColor: Colors.white,)
                    // Image.asset('assets/images/avatar.png')
                    ,
                  ),
                );
              },
              items: [
                SidebarXItem(
                  iconWidget: 
                  const Icon(
                    Icons.dashboard_outlined, 
                    color: textColor,),
                  // icon: Icons.dashboard,
                  
                  label: 'Dashboard',
                  onTap: () {
                    // debugPrint('Home');
                  },
                ),
                // SidebarXItem(
                //   icon: Icons.search,
                //   label: 'Search',
                //   onTap: () {
                //     // debugPrint('Search');
                //   },
                // ),
                SidebarXItem(
                  iconWidget: 
                  const Icon(
                    Icons.info_outline, 
                    color: textColor,),
                  // icon: Icons.dashboard,
                  
                  label: 'Info',
                  onTap: () {
                    // debugPrint('Home');
                  },
                ),
                // const SidebarXItem(
                //   icon: Icons.favorite,
                //   label: 'Favorites',
                // ),
              ],
              footerItems: [
                SidebarXItem(
                  iconWidget: 
                  const Icon(
                    Icons.power_settings_new_rounded, 
                    color: textColor,),
                  // icon: Icons.dashboard,
                  
                  label: 'Logout',
                  onTap: () {
                    // debugPrint('Home');
                  },
                )
              ],
                  )
                // ExampleSidebarX(controller: _controller)
                ,
                Expanded(
                  child: Center(
                    child: _ScreensExample(
                      controller: _controller,
                      // authUserModel: _authUserModel,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

    //       });
    // });
  }

  // void _logout() {
  //   _authBloc.add(AuthLogoutEvent());
  // }

  // void _authListener(BuildContext context, AuthState state) {

  //   if (state.stateStatus == StateStatus.error) {
  //     SnackBarUtils.defualtSnackBar(state.errorMessage, context);
  //     return;
  //   }

  //   if (state.stateStatus == StateStatus.initial) {
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(
  //           builder: (BuildContext context) => MultiBlocProvider(providers: [
  //             BlocProvider<AuthBloc>(
  //                 create: (BuildContext context) => diContainer.authBloc),
  //             BlocProvider<QuestBloc>(
  //                 create: (BuildContext context) => diContainer.questBloc),
  //           ], child: const LoginPage()),
  //         ),
  //         ModalRoute.withName('/'));
  //   }
  // }

  // void _questListener(BuildContext context, QuestState state) {
  //   if (state.stateStatus == StateStatus.error) {
  //     const Center(child: CircularProgressIndicator());
  //     SnackBarUtils.defualtSnackBar(state.errorMessage, context);
  //   }
  // }
}

class _ScreensExample extends StatefulWidget {
  const _ScreensExample({
    required this.controller,
    // required this.authUserModel,
  });

  final SidebarXController controller;
  // final AuthUserModel authUserModel;
  @override
  State<_ScreensExample> createState() => _ScreensExampleState();
}

class _ScreensExampleState extends State<_ScreensExample> {
  // late AuthUserModel _authUserModel;
  //  CheckQuestModel? _checkQuestModel;
  // late CheckQuestModel _checkQuestModel
  @override
  void initState() {
    super.initState();
    // _authUserModel = widget.authUserModel;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(widget.controller.selectedIndex);
        switch (widget.controller.selectedIndex) {
          case 0:
          case 1:
          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Dashboard';
    // case 1:
    //   return 'Search';
    case 1:
      return 'Info';
    // case 3:
    //   return 'Favorites';
    // // case 4:
    // //   return 'Custom iconWidget';
    // case 5:
    //   return 'Profile';
    // case 6:
    //   return 'Settings';
    // case 7:
    //   return 'Logout';
    default:
      return 'Not found page';
  }
}

const textColor = Color.fromARGB(255, 236, 28, 36);
const primaryColor = Colors.white;
const canvasColor = Color.fromARGB(255, 46, 49, 145);
const scaffoldBackgroundColor = Colors.white38;
const accentCanvasColor = Color.fromRGBO(98, 114, 94, 1);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
const bodyColor = Colors.black12;
const hoverColor = Color.fromARGB(255, 108, 107, 136);
const double textSize = 30;
const double iconSize = 30;
