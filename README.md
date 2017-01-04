# Usage

1. Install Homebrew, ansible and clone Home.git:

    ```
    curl -fsSL https://raw.githubusercontent.com/ojima-h/Home/master/bootstrap.sh | bash
    ```
    
2. Execute ansible:

    ```
    cd ~/Workspace/Home/ansible
    ansible-playbook local.yml -i hosts -c local
    ```
    
3. Install VirtualBox and Ansible.

4. Vagrant up:

    ```
    cd ~/Workspace
    vagrant up
    vagrant provision # provisions the vagrant envirionment if needed.
    ```
