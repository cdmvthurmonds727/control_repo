node default {

}
node 'localhost.puppet.vm' {
  include role::master_server
}
