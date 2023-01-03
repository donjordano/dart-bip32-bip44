import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:dart_bip32_bip44/dart_bip32_bip44.dart';

void main() {
  var chain = Chain.seed(hex.encode(utf8.encode(
      'tower slice pond crunch tower viable enroll witness enough number noble exchange')));
  ExtendedPrivateKey privateKey =
      chain.forPath("m/44'/60'/0'/0") as ExtendedPrivateKey;
  print(privateKey.toString());
  print(privateKey.key);
  print(privateKey.publicKey());
}
