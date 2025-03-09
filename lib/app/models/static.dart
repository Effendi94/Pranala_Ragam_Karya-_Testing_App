class StaticModel {
  StaticModel({
    this.value,
    this.desc,
  });

  String? value;
  String? desc;

  StaticModel.fromJson(Map<String, dynamic> json) {
    value = json["value"];
    desc = json["desc"];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['value'] = value;
    data['desc'] = desc;
    return data;
  }
}
