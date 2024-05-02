/** @type {import('next').NextConfig} */
const nextConfig = {
    images: {
        remotePatterns: [
          {
            protocol: 'http',
            hostname: 'localhost',
            port: '1337',
            pathname: '/**',
          },
          {
            protocol: 'https',
            hostname: 'api.petproekt.ru',
            pathname: '/**',
          }
        
        ],
      },
};

export default nextConfig;
