import React, { FC } from 'react'
import styles from './Breadcrumb.module.scss'
import Link from 'next/link'

interface IPorps {
    items: {title?: string, href?: string}[]
}

const Breadcrumb: FC<IPorps> = ({items}, i) => {
  return (
    <div className={styles.root}>
      <ul className={styles.list} >
        <li className={styles.listItem} > <Link href={'/'} >Главная</Link> <span>-</span></li>
        {items?.map(({title, href})=> {
        if(title && href) {
             return <li key={i} className={styles.listItem} ><Link href={href}>{title} </Link> <span>-</span></li>
        } else if(title && !href) {
           return  <li key={i} className={styles.listItem} >{title}</li>
        } else {
          return null
        }
       }
        )}
      </ul>
    </div>
  )
}

export default Breadcrumb