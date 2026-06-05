class StackTechnology {
  const StackTechnology({
    required this.name,
    required this.group,
    required this.iconAsset,
    required this.semanticLabel,
  });

  final String name;
  final String group;
  final String iconAsset;
  final String semanticLabel;
}

class StackTechnologyGroup {
  const StackTechnologyGroup({
    required this.name,
    required this.technologies,
  });

  final String name;
  final List<StackTechnology> technologies;
}

const stackGroupQaTesting = 'QA & Testing';
const stackGroupBackendApis = 'Backend & APIs';
const stackGroupMobileCloud = 'Mobile & Cloud';

const stackTechnologyGroups = [
  StackTechnologyGroup(
    name: stackGroupQaTesting,
    technologies: [
      StackTechnology(
        name: 'Selenium',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/selenium.png',
        semanticLabel: 'Selenium logo',
      ),
      StackTechnology(
        name: 'Appium',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/appium.png',
        semanticLabel: 'Appium logo',
      ),
      StackTechnology(
        name: 'TestNG',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/testng.png',
        semanticLabel: 'TestNG logo',
      ),
      StackTechnology(
        name: 'JUnit',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/junit.png',
        semanticLabel: 'JUnit logo',
      ),
      StackTechnology(
        name: 'REST Assured',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/restassured.png',
        semanticLabel: 'REST Assured logo',
      ),
      StackTechnology(
        name: 'Postman',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/postman.png',
        semanticLabel: 'Postman logo',
      ),
      StackTechnology(
        name: 'Jira',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/jira.png',
        semanticLabel: 'Jira logo',
      ),
      StackTechnology(
        name: 'TestRail',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/testrail.png',
        semanticLabel: 'TestRail logo',
      ),
      StackTechnology(
        name: 'Jenkins',
        group: stackGroupQaTesting,
        iconAsset: 'assets/icons/techstackcolor/jenkins.png',
        semanticLabel: 'Jenkins logo',
      ),
    ],
  ),
  StackTechnologyGroup(
    name: stackGroupBackendApis,
    technologies: [
      StackTechnology(
        name: 'Java',
        group: stackGroupBackendApis,
        iconAsset: 'assets/icons/techstackcolor/java.png',
        semanticLabel: 'Java logo',
      ),
      StackTechnology(
        name: 'Spring Boot',
        group: stackGroupBackendApis,
        iconAsset: 'assets/icons/techstackcolor/springboot.png',
        semanticLabel: 'Spring Boot logo',
      ),
      StackTechnology(
        name: 'Hibernate',
        group: stackGroupBackendApis,
        iconAsset: 'assets/icons/techstackcolor/hibernate.png',
        semanticLabel: 'Hibernate logo',
      ),
      StackTechnology(
        name: 'Maven',
        group: stackGroupBackendApis,
        iconAsset: 'assets/icons/techstackcolor/maven.png',
        semanticLabel: 'Maven logo',
      ),
      StackTechnology(
        name: 'MySQL',
        group: stackGroupBackendApis,
        iconAsset: 'assets/icons/techstackcolor/mysql.png',
        semanticLabel: 'MySQL logo',
      ),
      StackTechnology(
        name: 'JWT',
        group: stackGroupBackendApis,
        iconAsset: 'assets/icons/techstackcolor/jwt.png',
        semanticLabel: 'JWT logo',
      ),
      StackTechnology(
        name: 'Docker',
        group: stackGroupBackendApis,
        iconAsset: 'assets/icons/techstackcolor/docker.png',
        semanticLabel: 'Docker logo',
      ),
    ],
  ),
  StackTechnologyGroup(
    name: stackGroupMobileCloud,
    technologies: [
      StackTechnology(
        name: 'Flutter',
        group: stackGroupMobileCloud,
        iconAsset: 'assets/icons/techstackcolor/flutter.png',
        semanticLabel: 'Flutter logo',
      ),
      StackTechnology(
        name: 'Firebase',
        group: stackGroupMobileCloud,
        iconAsset: 'assets/icons/techstackcolor/firebase.png',
        semanticLabel: 'Firebase logo',
      ),
      StackTechnology(
        name: 'Android',
        group: stackGroupMobileCloud,
        iconAsset: 'assets/icons/techstackcolor/android.png',
        semanticLabel: 'Android logo',
      ),
      StackTechnology(
        name: 'iOS',
        group: stackGroupMobileCloud,
        iconAsset: 'assets/icons/techstackcolor/ios_apple.png',
        semanticLabel: 'iOS logo',
      ),
      StackTechnology(
        name: 'AWS',
        group: stackGroupMobileCloud,
        iconAsset: 'assets/icons/techstackcolor/aws.png',
        semanticLabel: 'AWS logo',
      ),
    ],
  ),
];
