'use client'
import React, { FC, useEffect, useState } from 'react'
import styles from './Filters.module.scss'
import { Checkbox } from 'antd'
import cs from 'classnames'
import Price from '../components/price'
import { IFilters } from '@/entities/filter'
import qs from 'qs'
import { useRouter } from 'next/navigation'
import { IProducts } from '@/entities/product'
import Button from '@/shared/ui/button'

interface IProps {
  filters?: IFilters
  allProducts?: IProducts
  products?: IProducts
  onConfirm?: ()=> void
}


export const Filters: FC<IProps> = ({ filters, allProducts, products, onConfirm }) => {
  const [resetPrice, setResetPrice] = useState<boolean>(false)
  const [maxPrice, setMaxPrice] = useState<number>()
  const [price, setPrice] = useState<number[]>()
  const [inStock, setInStock] = useState<boolean>(false)
  const [characteristics, setCharacteristics] = useState<{ name: string, values: string[] }[]>([])
  const [inStockEntity, setInStockEntity] = useState<string>()
  const router = useRouter()





  useEffect(() => {

    const max = allProducts?.data.reduce((prev, curr) => { return Math.max(prev, curr.attributes.price) }, 0)

    setMaxPrice(max)

  }, [allProducts])


  useEffect(() => {
    const newArray = products?.data?.filter(({ attributes }) => attributes?.inStock === true)
    newArray && setInStockEntity(String(newArray?.length))
  }, [products])


  useEffect(() => {

    const quertString = qs.stringify({
      filters: {
        price: price ? {
          $between: price
        } : undefined,
        inStock: inStock ? {
          $eq: true
        } : undefined,
        $and: characteristics ? characteristics.map(({ name, values }) => {
          if (name && values.length > 0) {
            return {
              characteristics: {
                name: {
                  $eq: name
                },
                value: {
                  $in: values
                }
              }
            }
          }
        }) : undefined
      }
    })
    router.replace(`?${quertString}`)

  }, [price, inStock, characteristics])




  const handleCharacteristicsChange = (checked: boolean, name: string, value: string) => {

    if (checked) {
      const findedItem = characteristics.find((item) => item.name === name)

      if (!findedItem) {
        setCharacteristics([...characteristics, { name, values: [value] }])
      } else {
        setCharacteristics((prev) => {
          return prev.map((item) => {
            if (item.name === name) {
              return { ...item, values: [...item.values, value] }
            } else {
              return item
            }
          })
        })
      }
    } else {

      setCharacteristics((prev) => {
        const findedItem = prev.find((item) => item.name === name)
        if (findedItem && findedItem.values.length > 0) {
          return prev.map((item) => {
            if (item.name === name) {
              return { ...item, values: item.values.filter((item) => item !== value) }
            } else {
              return item
            }
          })
        } else {
          return prev.filter((item) => item.name !== name)
        }
      })

    }

  }



  const handleReset = () => {
    setResetPrice(!resetPrice)
    setCharacteristics([])
    setInStock(false)

  }




  return (
    <div className={styles.root} >


      <div className={cs(styles.filter, styles.price)} >
        <Price resetPrice={resetPrice} maxPrice={maxPrice} onChange={(value) => setPrice(value)} />
      </div>

      <div className={cs(styles.filter, styles.inStock)} >
        <div>
          <Checkbox checked={inStock} onChange={(e) => setInStock(e.target.checked)} /> <span> В наличии</span>{inStockEntity && <span>{`(${inStockEntity})`}</span>}
        </div>
      </div>
      {
        filters?.data?.map(({ id, attributes }) => {
          const { name, values } = attributes


          return (
            <div key={id} className={cs(styles.filter)} >
              <span>{name}</span>
              <ul>
                {values?.map(({ id, value }) =>
                  <li key={id} >
                    <Checkbox checked={characteristics.find((item) => item.name === name)?.values.includes(value)} onChange={(e) => handleCharacteristicsChange(e.target.checked, name, value)} /> <span>{value}</span>
                  </li>)
                }


              </ul>
            </div>
          )
        })
      }

      <div className={styles.footer} >
        { onConfirm && <Button onClick={onConfirm} width='114px' >ок</Button>}
        <button onClick={handleReset} className={styles.resetBtn} >X Сбросить</button>
      </div>


    </div>
  )
}
