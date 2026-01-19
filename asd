https://view.awsapps.com/start/#/device?user_code=QNMQ-NBSP


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



Open this URL in your local browser:
  https://app.kiro.dev/signin?state=TIcZ6pHOCS&code_challenge=I5VLw8pNG7IMnBPl7wFIcnRpVS-OC_Ybwr3Io1Ot4LI&code_challenge_method=S256&redirect_uri=http%3A%2F%2Flocalhost%3A49153&redirect_from=kirocli

