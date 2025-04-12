import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageRecord extends FirestoreRecord {
  ImageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  void _initializeFields() {}

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('image');

  static Stream<ImageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImageRecord.fromSnapshot(s));

  static Future<ImageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImageRecord.fromSnapshot(s));

  static ImageRecord fromSnapshot(DocumentSnapshot snapshot) => ImageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImageRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class ImageRecordDocumentEquality implements Equality<ImageRecord> {
  const ImageRecordDocumentEquality();

  @override
  bool equals(ImageRecord? e1, ImageRecord? e2) {
    return;
  }

  @override
  int hash(ImageRecord? e) => const ListEquality().hash([]);

  @override
  bool isValidKey(Object? o) => o is ImageRecord;
}
