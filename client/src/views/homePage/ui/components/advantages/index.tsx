import React from 'react'
import styles from './Advantages.module.scss'
import cs from 'classnames'
import Image from 'next/image'



type Advantage = {
    id: number
    title: string
    image: string
}


const advantagesList: Advantage[] = [
    {
        id: 1,
        title: 'Удобная и быстрая доставка',
        image: '/icons/truck-fast.png'
    },
    {
        id: 2,
        title: 'Весь товар сертифицирован',
        image: '/icons/like-shapes.png'
    },
    {
        id: 3,
        title: 'Более 4000 наименований',
        image: '/icons/clipboard-text.png'
    },
    {
        id: 4,
        title: 'Оплата наличным и безналичным расчетом',
        image: '/icons/empty-wallet-tick.png'
    },
]

const Adnatages = () => {
  return (
    <div className={styles.root}>
        <div className={cs('container', styles.inner)}>
           <ul className={styles.list} >
            {advantagesList?.map(({id, title, image})=>
            <li className={styles.listItem} key={id} >
                <Image src={image} width={54} height={54} alt='advantages image' />
                <p>{title}</p>
            </li>
            )}
           </ul>
        </div>
    </div>
  )
}

export default Adnatages