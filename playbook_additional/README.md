**Результат:**
```
# bash run.sh
e267c7310863c9a38b1045c2f9eb7a075df6ee9972af06d9e301183525e3e073
975d13954a5b93232d200b9f7856d3ca1e2d065be8d1337ff3f8b3d69527c47c
d75b9f89a8d05ad6f9e5814041cb28b894d6f0995f530f31674b625158e8d86b
Vault password:

PLAY [Print os facts] ******************************************************************************************************************************************************************

TASK [Gathering Facts] *****************************************************************************************************************************************************************
ok: [fedora_netology]
ok: [ubuntu_netology]
ok: [centos_netology]
ok: [localhost]

TASK [Print OS] ************************************************************************************************************************************************************************
ok: [localhost] => {
    "msg": "MacOSX"
}
ok: [centos_netology] => {
    "msg": "CentOS"
}
ok: [ubuntu_netology] => {
    "msg": "Ubuntu"
}
ok: [fedora_netology] => {
    "msg": "Fedora"
}

TASK [Print fact] **********************************************************************************************************************************************************************
ok: [localhost] => {
    "msg": "PaSSw0rd"
}
ok: [centos_netology] => {
    "msg": "el default fact"
}
ok: [ubuntu_netology] => {
    "msg": "deb default fact"
}
ok: [fedora_netology] => {
    "msg": "fed default fact"
}

PLAY RECAP *****************************************************************************************************************************************************************************
centos_netology            : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
fedora_netology            : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
ubuntu_netology            : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

d75b9f89a8d0
975d13954a5b
e267c7310863
```
