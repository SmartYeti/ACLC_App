import 'package:aclc_app/core/utils/guard.dart';
import 'package:aclc_app/features/presentation/landing_page.dart';
// import 'package:aclc_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey();
  // final DIContainer diContainer = DIContainer();
  bool _isObscure = true;

  // late AuthBloc _authBloc;

  @override
  void initState() {
    // _authBloc = BlocProvider.of<AuthBloc>(context);
    super.initState();
  }

  void clearText() {
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    // _authBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body:
            // BlocConsumer<AuthBloc, AuthState>(
            //     bloc: _authBloc,
            //     listener: _authBlocListener,
            //     builder: (context, state) {
            //       if (state.stateStatus == StateStatus.loading) {
            //         return _loadingWidget();
            //       }
            //       return
            Container(
          color: canvasColor,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                  width: 200,
                  child: Image(image: AssetImage("images/ACLC_Logo.png")),
                ),
                SizedBox(
                  width: 500,
                  height: 600,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 100,
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: textColor,
                                fontSize: textSize,
                                letterSpacing: .5),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: textColor),
                              boxShadow: const [
                                BoxShadow(
                                    color: hoverColor,
                                    blurRadius: 20.0,
                                    offset: Offset(0, 10))
                              ]),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom:
                                              BorderSide(color: textColor))),
                                  child: TextFormField(
                                      // validator: (String? val) {
                                      //   return Guard.againstInvalidEmail(val, 'Email');
                                      // },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: textColor,
                                          ),
                                          border: InputBorder.none,
                                          hintText: "USN",
                                          hintStyle:
                                              TextStyle(color: textColor)),
                                      validator: (String? val) {
                                        return Guard.againstEmptyString(
                                            val, 'USN');
                                      }
                                      //   validator: (String? val) {
                                      //   return Guard.againstEmptyString(val, 'Username');
                                      // }
                                      ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                      // validator: (String? val) {
                                      //   return Guard.againstEmptyString(
                                      //       val, 'Password');
                                      // },
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      controller: _passwordController,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                          prefixIcon: const Icon(
                                            Icons.lock_open,
                                            color: textColor,
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Password",
                                          hintStyle:
                                              const TextStyle(color: textColor),
                                          suffixIcon: IconButton(
                                            icon: Icon(
                                              _isObscure
                                                  ? Icons.visibility
                                                  : Icons.visibility_off,
                                              color: textColor,
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            },
                                          )),
                                      validator: (String? val) {
                                        return Guard.againstEmptyString(
                                            val, 'Password');
                                      }
                                      //   validator: (String? val) {
                                      //   return Guard.againstEmptyString(val, 'Password');
                                      // }
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => textColor),
                            shape: MaterialStateProperty.resolveWith((states) =>
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return hoverColor; //<-- SEE HERE
                                }
                                if (states.contains(MaterialState.pressed)) {
                                  return bodyColor; //<-- SEE HERE
                                }
                                return null; // Defer to the widget's default.
                              },
                            ),
                          ),
                          child: const SizedBox(
                            height: 50,
                            child: Center(
                              child: Text("Next", style: TextStyle(color: white)

                                  // style: TextStyle(
                                  //     color: Colors.white, fontWeight: FontWeight.bold),
                                  ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LandingPage()));
                            // _login(context);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => BlocProvider.value(
                              //               value: _authBloc,
                              //               child: const RegisterPage(),
                              //             )));
                              // clearText();
                            },
                            child: Text(
                              'Register',
                              style: GoogleFonts.montserrat(color: white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30, child: Divider()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        // }
        // ),
        );
  }

  // void _authBlocListener(BuildContext context, AuthState state) {
  //   if (state.stateStatus == StateStatus.error) {
  //     SnackBarUtils.defualtSnackBar(state.errorMessage, context);
  //   }

  //   if (state.authUserModel != null) {
  //     SnackBarUtils.defualtSnackBar('Login Success!', context);
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => MultiBlocProvider(
  //                     providers: [
  //                       BlocProvider<AuthBloc>(
  //                         create: (BuildContext context) =>
  //                             diContainer.authBloc,
  //                       ),
  //                       BlocProvider<QuestBloc>(
  //                         create: (BuildContext context) =>
  //                             diContainer.questBloc,
  //                       ),
  //                     ],
  //                     child: HomePage(
  //                       authUserModel: state.authUserModel!,
  //                     ))),
  //         ModalRoute.withName('/'));
  //   }
  // }

  // Widget _loadingWidget() {
  //   return const Center(
  //     child: CircularProgressIndicator(),
  //   );
  // }

  // void _login(BuildContext context) {
  //   if (_formKey.currentState!.validate()) {
  //     _authBloc.add(
  //       AuthLoginEvent(
  //         logInModel: LoginModel(
  //           email: _emailController.text,
  //           password: _passwordController.text,
  //         ),
  //       ),
  //     );
  //   }
  //   clearText();
  // }
}

// const textColor = Colors.white70;
// const canvasColor = Color.fromARGB(255, 33, 32, 75);
// const bodyColor = Colors.black12;
// const hoverColor = Color.fromARGB(255, 108, 107, 136);
// const double textSize = 30;
// const double iconSize = 30;
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
