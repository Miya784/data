$10$B9UcVIbKF6noWhfY6Zn8oO3jzXKxEribvhji5pNmSDg6AfKLjldvW


https://view.awsapps.com/start/#/device?user_code=MNDK-FMCS

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

/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'standalone',
  experimental: {
    outputFileTracingRoot: undefined,
  },
  async rewrites() {
    const apiUrl = process.env.BACKEND_API_URL || 'http://localhost:8080/api';
    console.log(`[Next.js] Proxying /api requests to: ${apiUrl}`);
    return [
      {
        source: '/api/:path*',
        destination: `${apiUrl}/:path*`,
      },
    ];
  },
};

module.exports = nextConfig;

docker run -d   --name go-server   --add-host=host.docker.internal:host-gateway   -p 8081:8081  -e DB_HOST=host.docker.internal   -e DB_PORT=9512   -e DB_USER=dashboardsql   -e DB_PASSWORD=ps-dashboardsql   -e DB_NAME=dashboardsql   -e DB_SSLMODE=disable   -e JWT_SECRET=your-super-secret-jwt-key-here   -e JWT_EXPIRE_HOURS=24   -e SERVER_PORT=8081   -e GIN_MODE=debug   9burhan/b-han-csa:v8
