#ssh
sudo systemctl enable sshd
sudo systemctl start sshd



#mount a partition
## own the partition
sudo chown deck <drive path>
## add /etc/fstab
UUID=6f7c6aba-3303-4e37-915f-c7691463c99b /run/media/deck/roms ext4 defaults,nofail 0 0



