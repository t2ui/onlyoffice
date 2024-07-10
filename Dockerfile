# 使用官方的 OnlyOffice Document Server 基础镜像
FROM onlyoffice/documentserver:latest

# 设置环境变量
ENV JWT_ENABLED=false
ENV JWT_SECRET=my_secret

# 暴露需要的端口
EXPOSE 80 443

# 启动 Document Server
CMD ["/app/ds/run-document-server.sh"]
