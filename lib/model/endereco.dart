class UserEndereco {
  final String rua;
  final String bairro;
  final String cidade;
  final String? numeroCasa;
  final String cep;
  final String uf;

  UserEndereco ({
    required this.rua,
    required this.bairro,
    required this.cidade,
    this.numeroCasa,
    required this.cep,
    required this.uf,
  });


  Map<String, dynamic> toJson() => {
    'rua': rua,
    'bairro': bairro,
    'cidade': cidade,
    'numeroCasa': numeroCasa,
    'cep': cep,
    'uf': uf,
  };

  static UserEndereco fromJson(Map<String, dynamic> json) => UserEndereco(
    rua: json['rua'],
    bairro: json['bairro'],
    cidade: json['cidade'],
    numeroCasa: json['numeroCasa'],
    cep: json['cep'],
    uf: json['uf'],
  );
}