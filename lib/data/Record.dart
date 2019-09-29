class Record {
  final String title;
  final int recordNumber;
  final String unit;
  final String category;
  final int count;

  Record(this.title, this.recordNumber, this.unit, this.category, this.count);

  String getTitle() {
    return title;
  }

  int getRecordNumber() {
    return recordNumber;
  }

  String getUnit(){
    return unit;
  }

  String getCateogry(){
    return category;
  }

  int getCount(){
    return count;
  }
}
