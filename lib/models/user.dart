class User {
  final int id;
  final String name;
  final String imageUrl;
  final String status;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.status,
  });

  int getId() {
    return this.id;
  }

  String getUserName() {
    return this.name;
  }

  // void setId(int id) {
  //   this.id = id;
  // }

  // void setMsg(String userName) {
  //   this.userName = userName;
  // }
}

final User me = User(id: 0, name: 'ME', imageUrl: '', status: 'haha');
final User nimi =
    User(id: 1, name: 'Donghwee', imageUrl: '', status: 'staying in sd');
final User nigimi =
    User(id: 2, name: 'Taeyoung', imageUrl: '', status: 'sibal');
final User jot = User(id: 3, name: 'Jeongjoon', imageUrl: '', status: 'lol');
final User sibal = User(id: 4, name: 'Inseong', imageUrl: '', status: 'okay');
final User haha = User(id: 5, name: 'Benjamin', imageUrl: '', status: 'zzz');

List<User> contacts = [nimi, nigimi, jot, sibal, haha];
