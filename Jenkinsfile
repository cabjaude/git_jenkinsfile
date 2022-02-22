// Uses Declarative syntax to run commands inside a container.
pipeline {
    agent {
        kubernetes {
            // Rather than inline YAML, in a multibranch Pipeline you could use: yamlFile 'jenkins-pod.yaml'
            // Or, to avoid YAML:
            // containerTemplate {
            //     name 'shell'
            //     image 'ubuntu'
            //     command 'sleep'
            //     args 'infinity'
            // }
            yaml '''
apiVersion: v1
kind: Pod
metadata:
  name: teste1
  namespace: jenkins
spec:
  containers:
  - name: git
    image: ceregousa/ubuntu-git
    resources:
      limits:
        memory: "4Gi"
      requests:
        memory: "1Gi"
    command:
    - sleep
    args:
    - infinity
'''
            // Can also wrap individual steps:
            // container('git') {
            //     sh 'hostname'
            // }
            defaultContainer 'git'
        }
    }
    stages {
        stage('Main') {
            steps {
                sh '$teste1'
                sh '$teste2'
            }
        }
    }
}
