class CountryModel {
  static const String codeKey = 'code';
  static const String nameKey = 'name';
  static const String flagKey = 'flag';

  final String code;
  final String name;
  final String flag;

  const CountryModel({
    this.code = '',
    this.name = '',
    this.flag = '',
  });

  CountryModel.copy(
    CountryModel model, {
    String? code,
    String? name,
    String? flag,
  })  : code = code ?? model.code,
        name = name ?? model.name,
        flag = flag ?? model.flag;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryModel &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;
}
