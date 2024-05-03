'use client'
import React, { useState } from 'react'
import styles from './Partners.module.scss'
import cs from 'classnames'
import Image from 'next/image'
import Link from 'next/link'



type Partner = {
    id: number
    image: string
    href: string
}

const partnersList : Partner[] = [
    {
        id: 1,
        image: '/images/partner_1.png',
        href: 'https://www.gsverf.ru/'
    },
    {
        id: 2,
        image: '/images/partner_2.png',
        href: "http://www.almaz-antey.ru/"
    },
    {
        id: 3,
        image: '/images/partner_3.png',
        href: "https://ktrv.ru"
    },
    {
        id: 4,
        image: '/images/partner_4.png',
        href: "https://www.rosatom.ru/index.html"
    },
    {
        id: 5,
        image: '/images/partner_5.png',
        href: "https://ese-osg.ru/"
    },
    {
        id: 6,
        image: '/images/partner_6.png',
        href: "https://www.sibur.ru/rusvinyl/"
    },
    {
        id: 7,
        image: '/images/partner_7.png',
        href: "https://www.rzd.ru/"
    },
    {
        id: 8,
        image: '/images/partner_8.png',
        href: "https://www.tplusgroup.ru/"
    },
]

const Partners = () => {
    const [showMore, setShowMore] = useState<boolean>(false)
  return (
    <div>
        <div className={cs('container', styles.inner)} >
            <h2 className={styles.title} >Нам доверяют</h2>
            <ul className={cs(styles.list, showMore && styles.list__active)} >
               {partnersList?.map(({id, image, href})=> 
            <li className={styles.listItem} key={id} >
                <Link href={href} >
                    <Image src={image} width={400} height={400} alt='partner image'/>
                </Link>
            </li>   
            )
               }
            </ul>
               {!showMore && <button className={styles.showMoreBtn} onClick={()=> setShowMore(true)} >Смотреть еще</button>}
        </div>
    </div>
  )
}

export default Partners