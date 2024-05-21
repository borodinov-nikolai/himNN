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
            protocol: 'http',
            hostname: '127.0.0.1',
            port: '1337',
            pathname: '/**',
          },
          {
            protocol: 'https',
            hostname: 'api.xn----otbmfa7b.xn--p1ai',
            pathname: '/**',
          }
        
        ],
      },
};

export default nextConfig;
