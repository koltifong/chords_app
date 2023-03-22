class Language {
  final int id;
  final String name;
  final String languageCode;

  const Language(this.id, this.name, this.languageCode);

}

 const List<Language> getLanguages = <Language>[
        Language(1, 'ភាសាខ្មែរ', 'kh'),
        Language(2, 'English', 'en'),
     ];