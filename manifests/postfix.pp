# Class: Helloworld::Postfix
# 
class helloworld::postfix {
  if str2bool($::postfix_installed) {
    file_line { 'postfix-local-only':
      path  => '/etc/postfix/main.cf',
      line  => 'inet_interfaces = localhost',
      match => '^inet_interface',
    }
  }
}
