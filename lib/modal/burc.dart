class Burc {
  final String _burcAdi;
  final String _burchTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  
  get burcAdi => _burcAdi;

  get burchTarihi => _burchTarihi;

  get burcDetayi => _burcDetayi;

  get burcKucukResim => _burcKucukResim;

  get burcBuyukResim => _burcBuyukResim;

  Burc(this._burcAdi, this._burchTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);
  @override
  String toString() {
    return '$_burcAdi - $_burchTarihi - $_burcDetayi -$_burcKucukResim - $_burcBuyukResim ';
  }
}
