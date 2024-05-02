import ReduxProvider from "@/shared/providers/reduxProvider";
import type { Metadata } from "next";
import { Nunito_Sans } from "next/font/google";
import '@/shared/styles/global.scss';
import { Header } from "@/widgets/header";

const nunito_Sans = Nunito_Sans({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Create Next App",
  description: "Generated by create next app",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body className={nunito_Sans.className}>
        <ReduxProvider>
          <Header/>
        {children}
        </ReduxProvider>
        </body>
    </html>
  );
}
