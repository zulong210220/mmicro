package main

import (
	"context"
	"fmt"
	"mmmicro/consts"
	"mmmicro/message"
	"time"

	micro "github.com/micro/go-micro"
	"github.com/micro/go-micro/registry"
	"github.com/micro/go-micro/service/grpc"
	"github.com/micro/go-plugins/registry/etcdv3"
)

func main() {
	reg := etcdv3.NewRegistry(func(op *registry.Options) {
		op.Addrs = consts.EtcdAddrs
	})

	service := grpc.NewService(
		micro.Name(consts.ClientName),
		micro.Registry(reg), //默认不在consul中注册服务，所以需要指定
		micro.RegisterTTL(30*time.Second),
		micro.RegisterInterval(15*time.Second),
		micro.Version("v1.0.0"),
	)

	service.Init()

	studentService := message.NewStudentService(consts.ServerName, service.Client())

	res, err := studentService.GetStudent(context.TODO(), &message.StudentRequest{Name: "davie"})
	if err != nil {
		fmt.Println(res, err)
		return
	}

	fmt.Println(res.Name)
	fmt.Println(res.Classes)
	fmt.Println(res.Grade)
	time.Sleep(1 * time.Second)
}
