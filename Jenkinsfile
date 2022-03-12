node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'root'
  remote.password = '!cl@udi0!'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "ping -c 5 8.8.8.8" 
  stage('acesso a pasta')     
    sshCommand remote: remote, command: "cd /root/teste-ping/"
  stage('script shell')     
    sshCommand remote: remote, command: "touch teste1"
  }
}
