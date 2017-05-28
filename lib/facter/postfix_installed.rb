# Returns true if postfix is installed
Facter.add(:postfix_installed) do
  confine :kernel => 'Linux'

  setcode do
    output = Facter::Util::Resolution.which('sendmail')
    output ? true : false
  end
end
