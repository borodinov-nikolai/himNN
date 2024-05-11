import React from 'react'
import styles from './Header.module.scss'
import cs from 'classnames'
import Image from 'next/image'
import Button from '@/shared/ui/button'
import Link from 'next/link'
import { getAllCategories} from '@/entities/category'
import Icons from '../components/icons'






export const Header = async () => {

  const categories = await getAllCategories()

  return (
    <header className={styles.root} >
      <div className={cs(styles.inner, 'container')} >
        <div className={styles.top} >
          <Link href={'/'} >
            <div className={styles.logo} >
              <Image src='/images/лого.png' width={90} height={51} alt='logo image' />
              <p>Надежный поставщик товаров технического назначения</p>
            </div>
          </Link>
          <div className={styles.address} >
            <Image src='/icons/location.png' width={28} height={28} alt='location icon' />
            <p>г. Нижний Новгород, ул. Кузбасская, д.1Ж, офис 405</p>
          </div>
          <div className={styles.numbers} >
            <Image src='/icons/call-calling.png' width={28} height={28} alt='phone icon' />
            <div >
              <p><Link href={"tel:+78312833097"} >+7 (831) 283-30-97</Link></p>
              <p><Link href={"tel:+78312833098"} >+7 (831) 283-30-98</Link></p>
            </div>
          </div>
        <Icons categories={categories} />
        </div>
        <nav className={styles.navigation}>
          <ul className={styles.links}>

            <li><Link href="/catalog">Каталог</Link></li>
            <li><Link href="/delivery">Доставка</Link></li>
            <li><Link href="/payment">Оплата</Link></li>
            <li><Link href="/about">О компании</Link></li>
            <li><Link href="/contacts">Контакты</Link></li>
            <Button width='202px' height='43px' >Заказать звонок</Button>
          </ul>
        </nav>
      </div>
    </header>
  )
}
