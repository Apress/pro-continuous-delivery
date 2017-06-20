resource data {
 protocol C;
 volume 0 {
    device /dev/drbd1;
    disk /dev/sdb1;
    meta-disk internal;
  }
 volume 1 {
    device /dev/drbd2;
    disk /dev/sdb2;
    meta-disk internal;
  }
 syncer {
  verify-alg sha1;
 }
 net {
  allow-two-primaries;
 }
 on node1 {
  address  172.17.8.104:7789;
 }
 on node2 {
  address  172.17.8.105:7789;
 }
}