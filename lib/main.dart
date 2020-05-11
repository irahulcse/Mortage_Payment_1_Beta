import 'package:flutter/material.dart';
import 'package:mortage_payment_1_beta_app/ui/mortgage_app.dart';
import 'package:mortage_payment_1_beta_app/util/colors.dart';

final ThemeData _mortageTheme = _buildMortageTheme();

ThemeData _buildMortageTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    accentColor: primaryIndigoDark,
    primaryColor: primaryIndigo200,
    scaffoldBackgroundColor: secondaryBackgroundWhite,
    hintColor: textOnPrimary,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryIndigoLight,
        ),
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
    ),
    textTheme: _baseMortage(base.textTheme),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      elevation: 7.0,
      splashColor: primaryIndigoLight,
    ),
  );
}

_baseMortage(TextTheme base) {
  return base.copyWith(
    body1: TextStyle(
      color: textOnPrimary,
      fontSize: 16.0,
    ),
  );
}

void main() => runApp(new MaterialApp(
      theme: _buildMortageTheme(),
      home: MortgageApp(),
    ));
