'use client'
import styles from './SubcategoriesList.module.scss'
import { imageUrl } from '@/entities/image'
import { IProducts } from '@/entities/product'
import Image from 'next/image'
import { usePathname, useRouter } from 'next/navigation'
import React, { useEffect, useState } from 'react'




export const SubcategoriesList = ({products}: {products?: IProducts}) => {
    const pathname = usePathname()
    const router = useRouter()
const [subcategories, setSubcategories] = useState<{id: number, name: string, href: string, image: string}[]>([])


    useEffect(()=>{
        const newArray = products?.data?.map(({id, attributes})=>{
            const {subcategory} = attributes
            const {name, href, image} = subcategory?.data?.attributes || {}
        
                return {id, name, href, image: image?.data?.attributes?.url }
        }).filter((item, index, array)=> index === array.findIndex((t)=> t.name === item.name)).reverse()

        newArray && setSubcategories(newArray)
    },[products])



  return (
    <ul className={styles.root} >
        {subcategories?.map(({id, name, href, image})=> 
        <li className={styles.listItem} onClick={()=> router.push(pathname + "/" + href)} key={id} >
     
                <div className={styles.imageHolder} >
                    {image && <Image src={imageUrl + image} width={300} height={300} alt="subcategory image" />}
                </div>
                    <div className={styles.content} >

                <h3>{name}</h3>
                    </div>
        </li>
        )}
    </ul>
  )
}

