node 'packer-virtualbox-iso' {
  include openjdk::packages
  include openjdk::ruby
  include openjdk::chef
  include openjdk::vagrant
  include openjdk::sudo
  include openjdk::dot_bashrc
  include openjdk::dot_bash_profile
}
