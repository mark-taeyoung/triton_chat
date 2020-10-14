class Message {
  int id;
  String msg;
  int read;
  bool delete;

  Message(int id, String msg, int read, bool delete) {
    this.id = id;
    this.msg = msg;
    this.read = read;
    this.delete = delete;
  }

  int getId() {
    return this.id;
  }

  String getMsg() {
    return this.msg;
  }

  int getRead() {
    return this.read;
  }

  bool getDelete() {
    return this.delete;
  }

  void setId(int id) {
    this.id = id;
  }

  void setMsg(String msg) {
    this.msg = msg;
  }

  void setRead(int read) {
    this.read = read;
  }

  void setDelete(bool delete) {
    this.delete = delete;
  }
}
