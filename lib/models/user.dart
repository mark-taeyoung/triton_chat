class User {
  int id;
  String userName;

  User(int id, String userName) {
    this.id = id;
    this.userName = userName;
  }

  int getId() {
    return this.id;
  }

  String getUserName() {
    return this.userName;
  }

  void setId(int id) {
    this.id = id;
  }

  void setMsg(String userName) {
    this.userName = userName;
  }
}
