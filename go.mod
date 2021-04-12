module mmmicro

go 1.16

//require (
//	github.com/golang/mock v1.3.1 // indirect
//	github.com/golang/protobuf v1.5.2
//	github.com/google/btree v1.0.0 // indirect
//	github.com/google/uuid v1.1.2 // indirect
//	github.com/gorilla/websocket v1.4.2 // indirect
//	github.com/json-iterator/go v1.1.10 // indirect
//	github.com/micro/go-micro v1.18.0
//	github.com/micro/go-plugins/registry/etcdv3 v0.0.0-20200119172437-4fe21aa238fd
//	github.com/miekg/dns v1.1.27 // indirect
//	github.com/onsi/ginkgo v1.12.0 // indirect
//	github.com/pkg/errors v0.9.1 // indirect
//	github.com/stretchr/testify v1.6.1 // indirect
//	golang.org/x/crypto v0.0.0-20200709230013-948cd5f35899 // indirect
//	golang.org/x/lint v0.0.0-20191125180803-fdd1cda4f05f // indirect
//	golang.org/x/net v0.0.0-20200707034311-ab3426394381 // indirect
//	golang.org/x/sync v0.0.0-20190911185100-cd5d95a43a6e // indirect
//	golang.org/x/sys v0.0.0-20200625212154-ddb9806d33ae // indirect
//	golang.org/x/text v0.3.3 // indirect
//	golang.org/x/time v0.0.0-20191024005414-555d28b269f0 // indirect
//	golang.org/x/tools v0.0.0-20191216173652-a0e659d51361 // indirect
//	google.golang.org/genproto v0.0.0-20200526211855-cb27e3aa2013 // indirect
//	//google.golang.org/protobuf v1.26.0
//	google.golang.org/protobuf v1.26.0
//	gopkg.in/yaml.v2 v2.3.0 // indirect
//)
//
//replace google.golang.org/grpc => google.golang.org/grpc v1.26.0

exclude (
	github.com/hashicorp/consul v1.4.0
	github.com/hashicorp/consul v1.4.2
	github.com/hashicorp/consul v1.4.3
	github.com/hashicorp/consul v1.4.4
	github.com/hashicorp/consul v1.4.5
	github.com/hashicorp/consul v1.5.0
)

require (
	github.com/coreos/bbolt v1.3.3 // indirect
	github.com/coreos/etcd v3.3.18+incompatible // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd v0.0.0-20190719114852-fd7a80b32e1f // indirect
	github.com/gogo/protobuf v1.3.0 // indirect
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/golang/protobuf v1.4.0
	github.com/gorilla/websocket v1.4.1 // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.1.0 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.9.5 // indirect
	github.com/hashicorp/go-rootcerts v1.0.1 // indirect
	github.com/hashicorp/golang-lru v0.5.3 // indirect
	github.com/hashicorp/memberlist v0.1.5 // indirect
	github.com/json-iterator/go v1.1.9 // indirect
	github.com/micro/go-micro v1.5.0
	github.com/micro/go-plugins v1.0.0
	github.com/miekg/dns v1.1.27 // indirect
	github.com/mitchellh/hashstructure v1.0.0
	github.com/nats-io/nats-server/v2 v2.1.6 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/prometheus/client_golang v1.2.1 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20200122045848-3419fae592fc // indirect
	go.etcd.io/etcd v3.3.13+incompatible
	go.uber.org/zap v1.13.0 // indirect
	golang.org/x/lint v0.0.0-20201208152925-83fdc39ff7b5 // indirect
	golang.org/x/mod v0.4.2 // indirect
	golang.org/x/sys v0.0.0-20210403161142-5e06dd20ab57 // indirect
	golang.org/x/time v0.0.0-20191024005414-555d28b269f0 // indirect
	google.golang.org/genproto v0.0.0-20191216164720-4f79533eabd1 // indirect
	google.golang.org/grpc v1.26.0
	google.golang.org/protobuf v1.22.0
	gopkg.in/yaml.v2 v2.4.0 // indirect
	honnef.co/go/tools v0.1.3 // indirect
)
