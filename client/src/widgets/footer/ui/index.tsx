import React from 'react'
import Link from 'next/link'
import styles from './Footer.module.scss'
import cs from 'classnames'
import Image from 'next/image'

export const Footer = () => {
  return (
    <footer className={styles.root} >
      <div className={cs('container', styles.inner)}>
        <div className={styles.logo} >
          <Image src={'/images/лого_белое.png'} width={90} height={46} alt='footer logo' />
          <p>© 2014-2023 Хим-НН</p>
        </div>
        <div className={styles.contacts} >
          <h3>Контакты</h3>

          <div className={styles.numbers} >
            <p>+7 (831) 283-30-97</p>
            <p>+7 (920) 059 20 50</p>
          </div>

          <p>him-nnov@mail.ru</p>

        </div>
        <div className={styles.address} >
          <h3>Адрес</h3>
          <p>Офис: 603108, г. Нижний Новгород, ул. Кузбасская, д.1Ж, офис 405</p>
          <p>Склад: 603108, г. Нижний Новгород, ул. Кузбасская, 17В</p>
        </div>
        <div className={styles.workHours} >
          <h3>Режим работы</h3>
          <div >
            <p>Пн-Пт: 9-17 </p>
            <p>Сб-Вс: выходной</p>
          </div>
        </div>
        <div className={styles.navigation} >
          <h3>Навигация</h3>
          <ul>
            <Link href="#" ><li>Каталог</li></Link  >
            <Link href="#" ><li>Доставка</li></Link  >
            <Link href="#" ><li>Оплата</li></Link  >
            <Link href="#" ><li>О компании</li></Link  >
            <Link href="#" ><li>Контакты</li></Link  >
            <Link href="#" ><li>Политика безопасности</li></Link>
          </ul>
          
        </div>

      </div>

    </footer>
  )
}
