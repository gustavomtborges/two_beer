// Mocks generated by Mockito 5.0.16 from annotations
// in two_beer/test/repository/beer_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i2;

import 'package:amplify_datastore/amplify_datastore.dart' as _i3;
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeStreamController_0<T> extends _i1.Fake
    implements _i2.StreamController<T> {}

/// A class which mocks [AmplifyDataStore].
///
/// See the documentation for Mockito's code generation for more information.
class MockAmplifyDataStore extends _i1.Mock implements _i3.AmplifyDataStore {
  MockAmplifyDataStore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.StreamController<dynamic> get streamController =>
      (super.noSuchMethod(Invocation.getter(#streamController),
              returnValue: _FakeStreamController_0<dynamic>())
          as _i2.StreamController<dynamic>);
  @override
  set modelProvider(_i4.ModelProviderInterface? _modelProvider) =>
      super.noSuchMethod(Invocation.setter(#modelProvider, _modelProvider),
          returnValueForMissingStub: null);
  @override
  set syncExpressions(List<_i4.DataStoreSyncExpression>? _syncExpressions) =>
      super.noSuchMethod(Invocation.setter(#syncExpressions, _syncExpressions),
          returnValueForMissingStub: null);
  @override
  set syncInterval(int? _syncInterval) =>
      super.noSuchMethod(Invocation.setter(#syncInterval, _syncInterval),
          returnValueForMissingStub: null);
  @override
  set syncMaxRecords(int? _syncMaxRecords) =>
      super.noSuchMethod(Invocation.setter(#syncMaxRecords, _syncMaxRecords),
          returnValueForMissingStub: null);
  @override
  set syncPageSize(int? _syncPageSize) =>
      super.noSuchMethod(Invocation.setter(#syncPageSize, _syncPageSize),
          returnValueForMissingStub: null);
  @override
  _i2.Future<void> configureDataStore(
          {_i4.ModelProviderInterface? modelProvider,
          List<_i4.DataStoreSyncExpression>? syncExpressions,
          int? syncInterval,
          int? syncMaxRecords,
          int? syncPageSize}) =>
      (super.noSuchMethod(
          Invocation.method(#configureDataStore, [], {
            #modelProvider: modelProvider,
            #syncExpressions: syncExpressions,
            #syncInterval: syncInterval,
            #syncMaxRecords: syncMaxRecords,
            #syncPageSize: syncPageSize
          }),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  _i2.Future<void> configure({String? configuration}) => (super.noSuchMethod(
      Invocation.method(#configure, [], {#configuration: configuration}),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  _i2.Future<List<T>> query<T extends _i4.Model>(_i4.ModelType<T>? modelType,
          {_i4.QueryPredicate? where,
          _i4.QueryPagination? pagination,
          List<_i4.QuerySortBy>? sortBy}) =>
      (super.noSuchMethod(
          Invocation.method(#query, [modelType],
              {#where: where, #pagination: pagination, #sortBy: sortBy}),
          returnValue: Future<List<T>>.value(<T>[])) as _i2.Future<List<T>>);
  @override
  _i2.Future<void> delete<T extends _i4.Model>(T? model) =>
      (super.noSuchMethod(Invocation.method(#delete, [model]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  _i2.Future<void> save<T extends _i4.Model>(T? model) =>
      (super.noSuchMethod(Invocation.method(#save, [model]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  _i2.Stream<_i4.SubscriptionEvent<T>> observe<T extends _i4.Model>(
          _i4.ModelType<T>? modelType) =>
      (super.noSuchMethod(Invocation.method(#observe, [modelType]),
              returnValue: Stream<_i4.SubscriptionEvent<T>>.empty())
          as _i2.Stream<_i4.SubscriptionEvent<T>>);
  @override
  _i2.Future<void> clear() => (super.noSuchMethod(Invocation.method(#clear, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i2.Future<void>);
  @override
  String toString() => super.toString();
}
