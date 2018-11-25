pipeline
   agent any

stages {
    stage ('compile stage') {

        steps {
        withMaven('maven_3_5_0') {
            sh 'mvn clean compile'

            }
        }
    }
    stage (Testing Stage')   {
        steps {
        withMaven('maven_3_5_0') {
            sh 'mvn clean compile'
      stage ('Testing Stage') {
          steps {
        withMaven('maven_3_5_0') {
            sh 'mvn test'
        }
      }
    } 
   stage ('Deployment stage')  {
      steps {
        withMaven('maven_3_5_0') {
            sh 'mvn deploy'
        }
    }
  }

}
