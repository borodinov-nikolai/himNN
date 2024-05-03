import ReduxProvider from "@/shared/providers/reduxProvider";
import { Nunito_Sans } from "next/font/google";
import '@/shared/styles/global.scss';
import { Header } from "@/widgets/header";
import { Footer } from "@/widgets/footer";
import { AntdRegistry } from "@ant-design/nextjs-registry";
import { getAllCategories } from "@/entities/category";
import { ConfigProvider } from "antd";

const nunito_Sans = Nunito_Sans({subsets: ["latin"]});

export const dynamic='force-dynamic'

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {

    const categories = await getAllCategories()
  return (
    <html lang="en">
      <body className={nunito_Sans.className}>
        <ReduxProvider>
          <AntdRegistry>
            <ConfigProvider>
          <Header categories={categories} />
        {children}
        <Footer/>
        </ConfigProvider>
        </AntdRegistry>
        
        </ReduxProvider>
        </body>
    </html>
  );
}
