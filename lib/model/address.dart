class Address {
  String _pays;
  String _commune;
  String _rue;
  String _numPropriete;
  String _codePostal;

  Address(this._pays, this._commune, this._rue,
      this._numPropriete, this._codePostal);

  String get codePostal => _codePostal;

  set codePostal(String value) {
    _codePostal = value;
  }

  String get numPropriete => _numPropriete;

  set numPropriete(String value) {
    _numPropriete = value;
  }

  String get rue => _rue;

  set rue(String value) {
    _rue = value;
  }

  String get commune => _commune;

  set commune(String value) {
    _commune = value;
  }


  String get pays => _pays;

  set pays(String value) {
    _pays = value;
  }
}