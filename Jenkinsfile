node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'root'
  remote.password = '!cl@udi0!'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "git clone https://github.com/cabjaude/teste-ping.git"
    sshCommand remote: remote, command: "ls -lrt"
    sshCommand remote: remote, command: "cat /root/teste-ping/script-teste.sh"
    sshCommand remote: remote, command: "bash /root/teste-ping/script-teste.sh"
  }
}
