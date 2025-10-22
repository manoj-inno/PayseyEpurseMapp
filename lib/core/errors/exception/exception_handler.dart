import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'exceptions.dart';
import '../failures.dart';

/// Helper class for repositories to handle common API call errors
class ExceptionHandler {
  /// Executes API calls and handles common errors
  ///
  /// Takes a function [apiCall] that returns a Future of type T
  /// Returns Either a Failure or the result of type T
  static Future<Either<Failure, T>> handleApiCall<T>(
    Future<T> Function() apiCall,
  ) async {
    try {
      final result = await apiCall();
      return Right(result);
    } on SocketException catch (e) {
      debugPrint("__________SOCKET EXCEPTION____________");
      debugPrint(e.toString());
      return Left(ServerDownFailure(
        message: 'Network connection unavailable',
        statusCode: 503,
      ));
    } on ClientException catch (e) {
      debugPrint("__________CLIENT EXCEPTION____________");
      debugPrint(e.toString());
      if (e.toString().contains('Connection refused') ||
          e.toString().contains('Connection timed out')) {
        return Left(ServerDownFailure(
          message: 'Server is currently unavailable. Please try again later.',
          statusCode: 503,
        ));
      }
      return Left(ServerDownFailure(
        message: 'Could not connect to server',
        statusCode: 503,
      ));
    } on ServerException catch (e) {
      debugPrint("__________SERVER EXCEPTION____________");
      debugPrint(e.toString());
      if (e.statusCode == 503) {
        return Left(ServerDownFailure(
          message: e.message,
          statusCode: e.statusCode,
        ));
      }
      return Left(ServerFailure(
        message: e.message,
        statusCode: e.statusCode,
      ));
    } catch (e) {
      debugPrint("__________GENERAL EXCEPTION____________");
      debugPrint(e.toString());
      if (e.toString().contains('SocketException') ||
          e.toString().contains('Connection refused') ||
          e.toString().contains('ClientException') ||
          e.toString().contains('Connection timed out')) {
        return Left(ServerDownFailure(
          message: 'Server is currently unavailable. Please try again later.',
          statusCode: 503,
        ));
      }
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
