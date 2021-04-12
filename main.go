package main

import (
	"log"
	"time"

	"mmmicro/consts"
	"mmmicro/manager"
	"mmmicro/message"

	micro "github.com/micro/go-micro"
	"github.com/micro/go-micro/registry"

	"github.com/micro/go-micro/service/grpc"
	bk "github.com/micro/go-plugins/broker/grpc"
	"github.com/micro/go-plugins/registry/etcdv3"
)

func main() {

	reg := etcdv3.NewRegistry(func(op *registry.Options) {
		op.Addrs = consts.EtcdAddrs
	})

	//创建一个新的服务对象实例
	service := grpc.NewService(
		micro.Name(consts.ServerName),
		micro.Registry(reg), //默认不在consul中注册服务，所以需要指定
		micro.Broker(bk.NewBroker()),
		micro.RegisterTTL(30*time.Second),
		micro.RegisterInterval(15*time.Second),
		micro.Version("v1.0.0"),
	)

	//服务初始化
	service.Init(
		micro.BeforeStart(func() error {
			return nil
		}),
	)

	//注册
	message.RegisterStudentServiceHandler(service.Server(), new(manager.StudentManager))

	//运行
	err := service.Run()
	if err != nil {
		log.Fatal(err)
	}
}
