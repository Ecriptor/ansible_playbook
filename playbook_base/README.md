**Результат:**
```
#  ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
Vault password:

PLAY [Print os facts] **********************************************************************************

TASK [Gathering Facts] *********************************************************************************
ok: [centos_netology]
ok: [ubuntu_netology]
ok: [localhost]

TASK [Print OS] ****************************************************************************************
ok: [localhost] => {
    "msg": "MacOSX"
}
ok: [centos_netology] => {
    "msg": "CentOS"
}
ok: [ubuntu_netology] => {
    "msg": "Ubuntu"
}

TASK [Print fact] **************************************************************************************
ok: [localhost] => {
    "msg": "all default fact"
}
ok: [centos_netology] => {
    "msg": "el default fact"
}
ok: [ubuntu_netology] => {
    "msg": "deb default fact"
}

PLAY RECAP *********************************************************************************************
centos_netology            : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
ubuntu_netology            : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
```

**Самоконтроль выполненения задания**

1. Где расположен файл с `some_fact` из второго пункта задания?
```
playbook/group_vars/all/examp.yml
```
2. Какая команда нужна для запуска вашего `playbook` на окружении `test.yml`?
```
ansible-playbook -i inventory/test.yml site.yml
```
3. Какой командой можно зашифровать файл?
```
ansible-vault encrypt examp.yml
```
4. Какой командой можно расшифровать файл?
```
ansible-vault decrypt examp.yml
```
5. Можно ли посмотреть содержимое зашифрованного файла без команды расшифровки файла? Если можно, то как?
```
ansible-vault view examp.yml
```
6. Как выглядит команда запуска `playbook`, если переменные зашифрованы?

```
ansible-playbook -i inventory/prod.yml --ask-vault-pass site.yml
```
7. Как называется модуль подключения к host на windows?
```
winrm
```
8. Приведите полный текст команды для поиска информации в документации ansible для модуля подключений ssh
```
ansible-doc -t connection ssh
```
9. Какой параметр из модуля подключения `ssh` необходим для того, чтобы определить пользователя, под которым необходимо совершать подключение?
```
remote_user
```
