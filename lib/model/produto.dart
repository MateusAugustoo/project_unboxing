import 'dart:io';

class Produto{
  final File? photoUrl;
  final String? nomeProduto;
  final String? descricao;
  final String? marcaProduto;
  final String? defeito;
  final String? preco;

  
  const Produto({
    this.photoUrl,
    this.nomeProduto,
    this.descricao,
    this.marcaProduto,
    this.defeito,
    this.preco,
  });

  toMap() {
    return <String, dynamic>{
      'photoUrl': photoUrl,
      'nomeProduto': nomeProduto,
      'descricao': descricao,
      'marca': marcaProduto,
      'defeito': defeito,
      'preco': preco,
    };
  }
  
}