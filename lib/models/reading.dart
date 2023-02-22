class Reading {
  late double accX;
  late double accY;
  late double accZ;
  late double uaccX; //user acelerometer
  late double uaccY; //user acelerometer
  late double uaccZ; //user acelerometer
  late double girX;
  late double girY;
  late double girZ;
  late double magX;
  late double magY;
  late double magZ;

  //make a positional constructor

  Reading(this.accX, this.accY, this.accZ, this.uaccX, this.uaccY, this.uaccZ,
      this.girX, this.girY, this.girZ, this.magX, this.magY, this.magZ);

  Map<String, dynamic> toMap() {
    return {
      "accX": accX,
      "accY": accY,
      "accZ": accZ,
      "uaccX": uaccX,
      "uaccY": uaccY,
      "uaccZ": uaccZ,
      "girX": girX,
      "girY": girY,
      "girZ": girZ,
      "magX": magX,
      "magY": magY,
      "magZ": magZ,
    };
  }

  static Reading fromMap(Map<String, dynamic> map) => Reading(
      map['accX'],
      map['accY'],
      map['accZ'],
      map['uaccX'],
      map['uaccY'],
      map['uaccZ'],
      map['girX'],
      map['girY'],
      map['girZ'],
      map['magX'],
      map['magY'],
      map['magZ']);
}
