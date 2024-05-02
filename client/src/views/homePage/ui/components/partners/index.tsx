import React from 'react'
import styles from './Partners.module.scss'
import cs from 'classnames'
import Image from 'next/image'



type Partner = {
    id: number
    image: string
}

const partnersList : Partner[] = [
    {
        id: 1,
        image: '/images/partner_1.png'
    },
    {
        id: 2,
        image: '/images/partner_2.png'
    },
    {
        id: 3,
        image: '/images/partner_3.png'
    },
    {
        id: 4,
        image: '/images/partner_4.png'
    },
    {
        id: 5,
        image: '/images/partner_5.png'
    },
    {
        id: 6,
        image: '/images/partner_6.png'
    },
    {
        id: 7,
        image: '/images/partner_7.png'
    },
    {
        id: 8,
        image: '/images/partner_8.png'
    },
]

const Partners = () => {
  return (
    <div>
        <div className='container' >
            <h2 className={styles.title} >Нам доверяют</h2>
            <ul className={styles.list} >
               {partnersList?.map(({id, image})=> 
            <li className={styles.listItem} key={id} >
                <Image src={image} width={400} height={400} alt='partner image'/>
            </li>   
            )
               }
            </ul>
        </div>
    </div>
  )
}

export default Partners