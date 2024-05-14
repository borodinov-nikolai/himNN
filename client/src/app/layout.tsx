import ReduxProvider from "@/shared/providers/reduxProvider";
import { Nunito_Sans } from "next/font/google";
import '@/shared/styles/global.scss';
import { Header } from "@/widgets/header";
import { Footer } from "@/widgets/footer";
import { AntdRegistry } from "@ant-design/nextjs-registry";
import { ConfigProvider } from "antd";
import { Metadata } from "next";
import { LoadCart } from "@/features/loadCart";
import { LoadFavorites } from "@/features/loadFavorites";
import { metadataGenerator } from "@/entities/metadata";

const nunito_Sans = Nunito_Sans({subsets: ["latin"]});


export const dynamic = 'force-dynamic'

export async function generateMetadata(): Promise<Metadata> { return await metadataGenerator({quantity: 'one', url: '/home-page?populate=*'}) }

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {

  return (
    <html lang="en">
      <body className={nunito_Sans.className}>
        <ReduxProvider>
            <LoadCart/>
            <LoadFavorites/>
          <AntdRegistry>
            <ConfigProvider theme={{token: {
              colorPrimary: 'rgba(0, 179, 2, 1)'
            }}}>
          <Header/>
        {children}
        <Footer/>
        </ConfigProvider>
        </AntdRegistry>
        
        </ReduxProvider>
        </body>
    </html>
  );
}
