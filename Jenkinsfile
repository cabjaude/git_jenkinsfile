node {
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
        memory: "2Gi"
      requests:
        memory: "2Gi"
    command:
    - sleep
    args:
    - infinity
'''
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'vagrant'
  remote.password = 'vagrant'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "git clone https://github.com/cabjaude/teste-ping.git"     
  }
}
