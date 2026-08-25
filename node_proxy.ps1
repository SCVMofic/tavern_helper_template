# 设置代理环境变量（仅对当前 PowerShell 进程生效）
$env:HTTP_PROXY  = "http://127.0.0.1:8800"
$env:HTTPS_PROXY = "http://127.0.0.1:8800"
$env:NODE_USE_ENV_PROXY = "1"
