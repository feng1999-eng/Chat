# Chat
使用muduo网络库作为服务端网络核心模块，解耦网络和业务模块，提供高并发网络I/O服务
使用json进行序列化和反序列化
使用nginx基于TCP负载均衡，实现集群功能，提高并发能力
使用观察者模式，基于redis的发布订阅实现跨服务器通信
存储使用mysql，同时应用orm框架，简化数据库操作
使用单例模式设计数据库连接池来提高mysql server的访问效率
