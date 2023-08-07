import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_model.freezed.dart';

part 'album_model.g.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required int userId,
    required int id,
    required String title,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState.initial() = Initial;

  const factory AlbumState.loading() = _AlbbumLoading;

  const factory AlbumState.loaded() = _AlbumLoaded;
}
