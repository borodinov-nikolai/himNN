import ReduxProvider from "@/shared/providers/reduxProvider";
import { Nunito_Sans } from "next/font/google";
import '@/shared/styles/global.scss';
import { Header } from "@/widgets/header";
import { Footer } from "@/widgets/footer";
import { AntdRegistry } from "@ant-design/nextjs-registry";
import { ConfigProvider } from "antd";

const nunito_Sans = Nunito_Sans({subsets: ["latin"]});



export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {

  return (
    <html lang="en">
      <body className={nunito_Sans.className}>
        <ReduxProvider>
          <AntdRegistry>
            <ConfigProvider>
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
