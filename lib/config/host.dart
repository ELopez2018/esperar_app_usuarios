String get apiHost {
  bool idProd = const bool.fromEnvironment("dart.vm.product");
  if (idProd) {
    return "http://ec2-52-23-71-203.compute-1.amazonaws.com:8000/api/v1";
  }
  return "http://192.168.0.122:8080/api/v1";
}
