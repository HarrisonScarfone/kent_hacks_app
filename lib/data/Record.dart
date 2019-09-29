class Record {
  String title;
  int recordNumber;
  String unit;
  String category;
  int count;

  Record(this.title, this.recordNumber, this.unit, this.category, this.count);

  String getTitle() {
    return title;
  }

  int getRecordNumber() {
    return recordNumber;
  }

  String getUnit() {
    return unit;
  }

  String getCateogry() {
    return category;
  }

  int getCount() {
    return count;
  }

  void setCount(int a) {
    count = a;
  }
}
