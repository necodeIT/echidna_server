// import 'dart:io';
// import 'dart:mirrors';

// import 'package:analyzer/dart/analysis/utilities.dart';
// import 'package:analyzer/dart/ast/ast.dart';
// import 'package:analyzer/dart/ast/visitor.dart';
// import 'package:echidna_server/echidna_server.dart';
// import 'package:shelf_modular/shelf_modular.dart';

// // ! Work in progress

// class PrismaStub implements PrismaClient {
//   @override
//   dynamic noSuchMethod(Invocation invocation) {
//     return super.noSuchMethod(invocation);
//   }
// }

// class ReflectedRouteManager extends RouteManager {
//   final List<ModularRoute> _routes = [];

//   List<ModularRoute> get routes => List.unmodifiable(_routes);

//   @override
//   void add(ModularRoute route) {
//     _routes.add(route);
//   }
// }

// void main() {
//   final server = ServerModule(PrismaStub());

//   final manager = ReflectedRouteManager();

//   server.routes(manager);

//   for (final route in manager.routes) {
//     inspectRoute(route);
//   }
// }

// void inspectRoute(ModularRoute route, {String path = ''}) {
//   final module = route.module;
//   if (module != null) {
//     final manager = ReflectedRouteManager();

//     module.routes(manager);

//     for (final route in manager.routes) {
//       inspectRoute(route, path: '$path/${route.name}');
//     }

//     return;
//   }

//   if (route is Route) {
//     final handlerMirror = reflect(route.handler);
//     final handlerType = handlerMirror.type;
//     final location = handlerType.location;

//     print(handlerType.originalDeclaration.metadata.map((e) => e.type));

//     // print('$path/${route.name} -> ${handlerType.simpleName}');

//     if (location != null) {
//       final filePath = location.sourceUri;
//       // print('Handler defined in: $filePath');
//       // parseAndAnalyzeFile(filePath);
//     }
//   }

//   // print("$path/${route.name}");
//   for (final child in route.children) {
//     inspectRoute(child, path: '$path/${route.name}');
//   }
// }

// void parseAndAnalyzeFile(String filePath) {
//   try {
//     final fileContent = File(filePath).readAsStringSync();
//     final parseResult = parseString(content: fileContent);

//     final unit = parseResult.unit;
//     final visitor = _ASTPrinter();
//     unit.visitChildren(visitor);
//   } catch (e) {
//     print('Error reading or parsing file $filePath: $e');
//   }
// }

// class _ASTPrinter extends GeneralizingAstVisitor<void> {
//   @override
//   void visitNode(AstNode node) {
//     print('${node.runtimeType}: $node');
//     super.visitNode(node);
//   }
// }
