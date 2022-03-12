node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'root'
  remote.password = '!cl@udi0!'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "git clone https://github.com/cabjaude/teste-ping.git"
  stage('locate path')
    sshCommand remote: remote, command: "sshPut remote: remote, from: 'cd /root/teste-ping', into: '.'"
  stage('script shell')     
    sshScript remote: remote, script: "script-teste.sh"
  }
}
