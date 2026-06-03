enum CvLanguage {
  english,
  spanish,
}

class CvDocument {
  const CvDocument({
    required this.language,
    required this.assetPath,
    required this.downloadFileName,
    required this.shortLabel,
    required this.label,
  });

  final CvLanguage language;
  final String assetPath;
  final String downloadFileName;
  final String shortLabel;
  final String label;
}

const CvDocument kEnglishCvDocument = CvDocument(
  language: CvLanguage.english,
  assetPath: 'assets/pdf/resume.pdf',
  downloadFileName: 'Manuel Miguez Lauría CV.pdf',
  shortLabel: 'EN',
  label: 'English',
);

const CvDocument kSpanishCvDocument = CvDocument(
  language: CvLanguage.spanish,
  assetPath: 'assets/pdf/resume_es.pdf',
  downloadFileName: 'Manuel Miguez Lauría CV Español.pdf',
  shortLabel: 'ES',
  label: 'Spanish',
);

const CvDocument kDefaultCvDocument = kEnglishCvDocument;
