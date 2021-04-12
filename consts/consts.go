package consts

/*
 * Author : centos
 * Email : yajin160305@gmail.com
 * File : consts.go
 * CreateDate : 2021-04-12 11:15:28
 * */

const (
	ServerName = "student_service"
	ClientName = "student.client"
)

var (
	EtcdAddrs = []string{
		"192.168.1.4:4001",
		"192.168.1.4:5001",
		"192.168.1.4:6001",
	}
)

/* vim: set tabstop=4 set shiftwidth=4 */
