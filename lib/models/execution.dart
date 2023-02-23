class Execution {
  late String name;
  late List<String> files;

  Execution(this.name, this.files);

  Map<String, dynamic> toMap() => {"name": name, "files": files};

  static Execution fromMap(Map<String, dynamic> map) =>
      Execution(map["name"], map["files"]);
}
