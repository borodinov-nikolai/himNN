'use client'
import React, { useEffect, useState } from 'react'
import styles from './Price.module.scss'
import { ConfigProvider, InputNumber, Slider } from 'antd'





const Price = ({onChange, maxPrice=0, resetPrice}:{onChange: (value:number[])=> void, maxPrice?: number, resetPrice?: boolean}) => {
    const [price, setPrice] = useState<number[]>([0, 0])
    const [inputsValue, setInputsValue] = useState<number[]>([0, 0])

   



    const handleSetPrice = (name: string) => {
        if (name === 'min') {
            const newValue = Math.min(Math.max(inputsValue[0], 0), inputsValue[1])
            setPrice([newValue, price[1]])
        }
        if (name === 'max') {
            const newValue = Math.max(Math.min(inputsValue[1], maxPrice), inputsValue[0])
            setPrice([price[0], newValue])
        }
    }


  


    const handleKeyPress = (event: React.KeyboardEvent<HTMLInputElement>, name: string) => {
        const pattern = /[0-9]/;

        if (!pattern.test(event.key)) {
            event.preventDefault();
        }

        if (event.key === 'Enter') {
            handleSetPrice(name)
        }

    };


    useEffect(() => {

        setInputsValue(price)
        onChange(price)

    }, [price])

    useEffect(()=>{
      if(maxPrice) {
        setPrice([0, maxPrice])
        setInputsValue([0, maxPrice])
      }

    }, [maxPrice, resetPrice] )


    return (

        <ConfigProvider
            theme={{
                components: {
                    Slider: {
                        handleSize: 22,
                        handleSizeHover: 22,
                        handleLineWidthHover: 2,
                        railSize: 2,
                        algorithm: true,
                    }
                }
            }}
        >
            <h3>Цена</h3>
          <div className={styles.priceInputs} >
                <InputNumber onBlur={() => handleSetPrice('min')} onKeyPress={(e) => handleKeyPress(e, 'min')} value={inputsValue[0]} onChange={(e) => e && setInputsValue([e, inputsValue[1]])} type="text" />
                <span></span>
                <InputNumber onBlur={() => handleSetPrice('max')} onKeyPress={(e) => handleKeyPress(e, 'max')} value={inputsValue[1]} onChange={(e) => e && setInputsValue([inputsValue[0], e])} type="text" />
            </div>
         <div className={styles.slider} >
                <Slider value={price} step={100} onChange={(e) => setPrice(e)} min={0} max={maxPrice} tooltip={{ open: false }} range />
            </div>
        </ConfigProvider>

    )
}

export default Price