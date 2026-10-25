import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

const _kAnonymousId = 'gtmeasy.anonymousId';
const _kDeviceId = 'gtmeasy.deviceId';
const _kUserId = 'gtmeasy.userId';
const _kLastVersion = 'gtmeasy.lastVersion';
const _kUsername = 'gtmeasy.username';
const _kEmail = 'gtmeasy.email';

class IdentityStore {
  IdentityStore(this._prefs, {this._uuid = const Uuid(), this.persist = true});

  final SharedPreferences _prefs;
  final Uuid _uuid;

  /// When false (suppressed mode) identity lives in memory only: existing
  /// persisted ids are reused, new ones are never written.
  final bool persist;

  late String anonymousId;
  late String deviceId;
  String? userId;
  String? username;
  String? email;
  String? lastVersion;

  Future<void> load() async {
    anonymousId = _prefs.getString(_kAnonymousId) ?? _uuid.v4();
    deviceId = _prefs.getString(_kDeviceId) ?? _uuid.v4();
    userId = _prefs.getString(_kUserId);
    username = _prefs.getString(_kUsername);
    email = _prefs.getString(_kEmail);
    lastVersion = _prefs.getString(_kLastVersion);
    if (!persist) return;
    await _prefs.setString(_kAnonymousId, anonymousId);
    await _prefs.setString(_kDeviceId, deviceId);
  }

  Future<void> setUser({
    String? userId,
    String? username,
    String? email,
  }) async {
    if (userId != null) this.userId = userId;
    if (username != null) this.username = username;
    if (email != null) this.email = email;
    if (!persist) return;
    if (userId != null) await _prefs.setString(_kUserId, userId);
    if (username != null) await _prefs.setString(_kUsername, username);
    if (email != null) await _prefs.setString(_kEmail, email);
  }

  Future<void> setLastVersion(String value) async {
    lastVersion = value;
    if (!persist) return;
    await _prefs.setString(_kLastVersion, value);
  }

  Future<void> reset() async {
    userId = null;
    username = null;
    email = null;
    anonymousId = _uuid.v4();
    if (!persist) return;
    await _prefs.remove(_kUserId);
    await _prefs.remove(_kUsername);
    await _prefs.remove(_kEmail);
    await _prefs.setString(_kAnonymousId, anonymousId);
  }
}
