import 'package:injectable/injectable.dart';
class PendingChange { const PendingChange({required this.entity,required this.id,required this.updatedAt,required this.deletedAt,required this.payload}); final String entity,id; final DateTime updatedAt; final DateTime? deletedAt; final Map<String,Object?> payload; }
@lazySingleton
class SyncQueue { final _items=<String,PendingChange>{}; List<PendingChange> get pending=>_items.values.toList()..sort((a,b)=>a.updatedAt.compareTo(b.updatedAt)); void record(PendingChange c){final old=_items['${c.entity}:${c.id}'];if(old==null||c.updatedAt.isAfter(old.updatedAt))_items['${c.entity}:${c.id}']=c;} PendingChange merge(PendingChange local,PendingChange remote)=>remote.updatedAt.isAfter(local.updatedAt)?remote:local; }
