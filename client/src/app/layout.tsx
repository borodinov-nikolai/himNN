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
import Script from "next/script";

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
    
        <Script id='metrika' type="text/javascript" >
   {`(function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();
   for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
   k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(97341812, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true
   });`}
</Script>
<noscript><div><img src="https://mc.yandex.ru/watch/97341812" style={{position:"absolute", left:"-9999px"}} alt="" /></div></noscript>
        </body>
    </html>
  );
}
