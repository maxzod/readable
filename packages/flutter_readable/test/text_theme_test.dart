import 'package:flutter/material.dart';
import 'package:flutter_readable/flutter_readable.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'RContextTextTheme extension methods',
    (
      WidgetTester tester,
    ) async {
      final theme = ThemeData(
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 10),
          bodyMedium: TextStyle(fontSize: 12),
          bodyLarge: TextStyle(fontSize: 14),
          labelSmall: TextStyle(fontSize: 10),
          labelMedium: TextStyle(fontSize: 12),
          labelLarge: TextStyle(fontSize: 14),
          displaySmall: TextStyle(fontSize: 16),
          displayMedium: TextStyle(fontSize: 20),
          displayLarge: TextStyle(fontSize: 24),
          headlineSmall: TextStyle(fontSize: 16),
          headlineMedium: TextStyle(fontSize: 20),
          headlineLarge: TextStyle(fontSize: 24),
          titleSmall: TextStyle(fontSize: 16),
          titleMedium: TextStyle(fontSize: 20),
          titleLarge: TextStyle(fontSize: 24),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: theme,
          home: Builder(
            builder: (context) {
              expect(
                identical(
                  context.bodySmall,
                  Theme.of(context).textTheme.bodySmall,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.bodyMedium,
                  Theme.of(context).textTheme.bodyMedium,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.bodyLarge,
                  Theme.of(context).textTheme.bodyLarge,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.labelSmall,
                  Theme.of(context).textTheme.labelSmall,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.labelMedium,
                  Theme.of(context).textTheme.labelMedium,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.labelLarge,
                  Theme.of(context).textTheme.labelLarge,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.displaySmall,
                  Theme.of(context).textTheme.displaySmall,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.displayMedium,
                  Theme.of(context).textTheme.displayMedium,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.displayLarge,
                  Theme.of(context).textTheme.displayLarge,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.headlineSmall,
                  Theme.of(context).textTheme.headlineSmall,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.headlineMedium,
                  Theme.of(context).textTheme.headlineMedium,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.headlineLarge,
                  Theme.of(context).textTheme.headlineLarge,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.titleSmall,
                  Theme.of(context).textTheme.titleSmall,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.titleMedium,
                  Theme.of(context).textTheme.titleMedium,
                ),
                isTrue,
              );
              expect(
                identical(
                  context.titleLarge,
                  Theme.of(context).textTheme.titleLarge,
                ),
                isTrue,
              );

              return const SizedBox();
            },
          ),
        ),
      );
    },
  );
}
