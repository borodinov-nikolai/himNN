import React from 'react'
import styles from './Header.module.scss'
import cs from 'classnames'
import Image from 'next/image'
import Button from '@/shared/ui/button'
import Link from 'next/link'

export const Header = () => {
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
              <p>+7 (831) 283-30-97</p>
              <p>+7 (831) 283-30-98</p>
            </div>
          </div>
          <ul className={styles.icons} >
            <li>
              <svg width="28" height="29" viewBox="0 0 28 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M13.4167 25C19.5378 25 24.5 20.0379 24.5 13.9167C24.5 7.79555 19.5378 2.83337 13.4167 2.83337C7.29551 2.83337 2.33333 7.79555 2.33333 13.9167C2.33333 20.0379 7.29551 25 13.4167 25Z" stroke="#4E4E4E" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
                <path d="M25.6667 26.1667L23.3333 23.8334" stroke="#4E4E4E" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
              </svg>
            </li>
            <li>
              <svg width="28" height="29" viewBox="0 0 28 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M19.6234 2.83337H8.37669C5.89169 2.83337 3.87335 4.86337 3.87335 7.33671V23.775C3.87335 25.875 5.37835 26.7617 7.22169 25.7467L12.915 22.585C13.5217 22.2467 14.5017 22.2467 15.0967 22.585L20.79 25.7467C22.6334 26.7734 24.1384 25.8867 24.1384 23.775V7.33671C24.1267 4.86337 22.1084 2.83337 19.6234 2.83337Z" stroke="#4E4E4E" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
              </svg>
            </li>
            <li  >
              <svg width="28" height="29" viewBox="0 0 28 29" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M2.33334 2.83337H4.36335C5.62335 2.83337 6.61501 3.91837 6.51001 5.16671L5.54168 16.7867C5.37834 18.6884 6.88334 20.3217 8.79667 20.3217H21.2217C22.9017 20.3217 24.3717 18.945 24.5 17.2767L25.13 8.52671C25.27 6.59005 23.8 5.01503 21.8517 5.01503H6.79002" stroke="#4E4E4E" strokeWidth="1.5" strokeMiterlimit="10" strokeLinecap="round" strokeLinejoin="round" />
                <path d="M18.9583 26.1667C19.7637 26.1667 20.4167 25.5137 20.4167 24.7083C20.4167 23.9029 19.7637 23.25 18.9583 23.25C18.1529 23.25 17.5 23.9029 17.5 24.7083C17.5 25.5137 18.1529 26.1667 18.9583 26.1667Z" stroke="#4E4E4E" strokeWidth="1.5" strokeMiterlimit="10" strokeLinecap="round" strokeLinejoin="round" />
                <path d="M9.62499 26.1667C10.4304 26.1667 11.0833 25.5137 11.0833 24.7083C11.0833 23.9029 10.4304 23.25 9.62499 23.25C8.81957 23.25 8.16666 23.9029 8.16666 24.7083C8.16666 25.5137 8.81957 26.1667 9.62499 26.1667Z" stroke="#4E4E4E" strokeWidth="1.5" strokeMiterlimit="10" strokeLinecap="round" strokeLinejoin="round" />
              </svg>
            </li>
            <li className={styles.burger} >
            <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M3.5 8.16663H24.5" stroke="#00BD12" strokeWidth="1.5" strokeLinecap="round"/>
<path d="M3.5 14H24.5" stroke="#00BD12" strokeWidth="1.5" strokeLinecap="round"/>
<path d="M3.5 19.8334H24.5" stroke="#00BD12" strokeWidth="1.5" strokeLinecap="round"/>
</svg>

            </li>
          </ul>
        </div>
        <div className={styles.bottom}>
          <ul className={styles.links}>
            <Link href=""><li>Каталог</li></Link>
            <Link href=""><li>Доставка</li></Link>
            <Link href=""><li>Оплата</li></Link>
            <Link href=""><li>О компании</li></Link>
            <Link href=""><li>Контакты</li></Link>
            <Button width='202px' height='43px' >Заказать звонок</Button>
          </ul>
        </div>
      </div>
    </header>
  )
}
