Failed to proxy http://localhost:8081/api/auth/login AggregateError:
    at ignore-listed frames {
  code: 'ECONNREFUSED'
}
AggregateError:
    at ignore-listed frames {
  code: 'ECONNREFUSED'
}

docker run -d `
  -p 3000:3000 `
  --name han-frontend-manual `
  --network han-network `
  -v "${PWD}/frontend/appsettings.json:/app/appsettings.json" `
  -e BACKEND_API_URL=http://backend:8080/api `
  han-frontend


curl -fsSL https://cli.kiro.dev/install | bash
