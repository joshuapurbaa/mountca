class MemberList {
  String name;
  String origin;
  String profilePic;
  String condition;

  MemberList({
    this.name,
    this.origin,
    this.profilePic,
    this.condition,
  });
}

List memberList = [
  MemberList(
    name: 'Andriana Kusuma',
    origin: 'Jawa Tengah',
    profilePic: 'assets/images/member1.png',
    condition: 'Siap!',
  ),
  MemberList(
    name: 'Geri Santoso',
    origin: 'Bali',
    profilePic: 'assets/images/member2.png',
    condition: 'Siap!',
  ),
  MemberList(
    name: 'Sinta Rantyah',
    origin: 'Jawa Timur',
    profilePic: 'assets/images/member3.png',
    condition: 'Siap!',
  ),
  MemberList(
    name: 'Dodit Kewer',
    origin: 'Yogyakarta',
    profilePic: 'assets/images/member4.png',
    condition: 'Siap!',
  ),
];
