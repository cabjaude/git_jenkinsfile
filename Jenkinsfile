node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'root'
  remote.password = '!cl@udi0!'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "git clone https://github.com/cabjaude/teste-ping.git" 
  stage('acesso a pasta')     
    sshCommand remote: remote, command: "cd /root/teste-ping/"
  stage('script shell')     
    sshCommand remote: remote, command: "touch teste1"
  }
}
