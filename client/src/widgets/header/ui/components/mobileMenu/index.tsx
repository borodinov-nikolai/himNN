'use client'
import React, { FC, useEffect, useState } from 'react'
import styles from './MobileMenu.module.scss'
import { Drawer } from 'antd'
import Image from 'next/image'
import cs from 'classnames'
import Link from 'next/link'
import Button from '@/shared/ui/button'
import { ICategories } from '@/entities/category'
import useWindowWidth from '@/shared/hooks/useWindowWidth'


interface IProps {
  categories?: ICategories
}

const MobileMenu: FC<IProps> = ({ categories }) => {
  const [open, setOpen] = useState<boolean>(false)
  const [catalogOpen, setCatalogOpen] = useState<boolean>(false)
  const windowWidth = useWindowWidth()


  const handleClose = () => {
    setOpen(false);
  };

  useEffect(() => {
    if (windowWidth && windowWidth > 1200) {
      handleClose()
    }
  }, [windowWidth])


  return (
    <div className={styles.root} >

      <svg onClick={() => setOpen(true)} width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M3.5 8.16663H24.5" stroke="#00BD12" strokeWidth="1.5" strokeLinecap="round" />
        <path d="M3.5 14H24.5" stroke="#00BD12" strokeWidth="1.5" strokeLinecap="round" />
        <path d="M3.5 19.8334H24.5" stroke="#00BD12" strokeWidth="1.5" strokeLinecap="round" />
      </svg>




      <Drawer closeIcon={null} bodyStyle={{ background: 'rgba(245, 245, 245, 1)', padding: '0' }} headerStyle={{ height: '0px' }} placement='left' width={'100vw'} onClose={handleClose} open={open}>
        <div className={cs('container', styles.content)} >

          <div className={styles.header} >
            <Link onClick={handleClose} href={'/'} >
              <Image src={'/images/лого.png'} width={91} height={51} alt='header logo ' />
            </Link>
            <button onClick={handleClose} className={styles.closeBtn} ><svg width="46" height="46" viewBox="0 0 46 46" fill="none" xmlns="http://www.w3.org/2000/svg">
              <path d="M17.1714 28.6569L28.4851 17.3432" stroke="#00B302" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
              <path d="M28.4851 28.6568L17.1714 17.3431" stroke="#00B302" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round" />
            </svg>
            </button>
          </div>

          <div className={styles.search}  >
            <input placeholder='поиск' type="text" />
            <Image src={'/icons/search.png'} width={24} height={24} alt='search icon' />
          </div>

          <div onClick={() => setCatalogOpen(!catalogOpen)} className={cs(styles.menuItem, styles.catalog, catalogOpen && styles.catalog__open)} >
            <p>Каталог</p>
            <Image src={'/icons/стрелка.png'} width={9} height={5} alt='arrow icon' />
          </div>
          <ul className={cs(styles.categories, catalogOpen && styles.categories__open)} >
            {categories?.data?.map(({ id, attributes }) => {
              const { name, href } = attributes
              return (
                <li onClick={handleClose} key={id} className={styles.menuItem} > <Link href={`/catalog/${href}`} >{name}</Link> </li>
              )
            })}

          </ul>
          <nav className={styles.navigation} >
            <div onClick={handleClose} className={styles.menuItem} > <Link href={'/delivery'} >  Доставка</Link></div>
            <div onClick={handleClose} className={styles.menuItem} > <Link href={'/about'} >  О компании</Link></div>
            <div onClick={handleClose} className={styles.menuItem} > <Link href={'/payment'} >  Оплата</Link></div>
            <div onClick={handleClose} className={styles.menuItem} > <Link href={'/contacts'} >  Контакты</Link></div>
          </nav>

          <div className={styles.numbers} >
            <p><Link href={"tel:+78312833097"} >+7 (831) 283-30-97</Link></p>
            <p><Link href={"tel:+78312833098"} >+7 (831) 283-30-98</Link></p>
          </div>

          <div className={styles.address} >
            г. Нижний Новгород, ул. Кузбасская, д.1Ж, офис 405
          </div>

          <div className={styles.successBtn}><Button width='100%' height='43px' >Заказать звонок</Button></div>
        </div>
      </Drawer>



    </div>

  )
}

export default MobileMenu