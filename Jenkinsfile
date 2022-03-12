node {
  def remote = [:]
  remote.name = 'test'
  remote.host = '192.168.1.70'
  remote.user = 'root'
  remote.password = '!cl@udi0!'
  remote.allowAnyHosts = true
  stage('Remote SSH') {
    sshCommand remote: remote, command: "git clone https://github.com/cabjaude/teste-ping.git"
  stage('File List')
    sshCommand remote: remote, command: "ls -lrt"
  stage('Verify script')
    sshCommand remote: remote, command: "cat /root/teste-ping/script-teste.sh"
  stage('Exec script')
    sshCommand remote: remote, command: "bash /root/teste-ping/script-teste.sh"
  }
}
