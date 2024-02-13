// import 'package:appwrite/appwrite.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// class DIContainer {
//   Client get _client => Client()
//       .setEndpoint(Config.endpoint)
//       .setProject(Config.projectId)
//       .setSelfSigned(status: true);

//   Account get _account => Account(_client);

//   Databases get _databases => Databases(_client);

//   FlutterSecureStorage get _secureStorage => const FlutterSecureStorage();

//   AuthLocalDatasource get _authLocalDatasource =>
//       AuthLocalDatasource(_secureStorage);

//   AuthRemoteDatasource get _authRemoteDatasource =>
//       AuthRemoteDatasource(_account, _databases);

//   AuthRepository get _authRepository =>
//       AuthRepository(_authRemoteDatasource, _authLocalDatasource);

//   AuthBloc get authBloc => AuthBloc(_authRepository);



//   QuestRemoteDatasource get _questRemoteDatasource =>
//       QuestRemoteDatasource(_databases);

//   QuestRepository get _questRepository =>
//       QuestRepository(_questRemoteDatasource);
      
//   QuestBloc get questBloc => QuestBloc(_questRepository);
// }
