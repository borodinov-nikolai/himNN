'use client'
import { IProduct } from '@/entities/product'
import styles from './ProductDescription.module.scss'
import React, { FC, useState } from 'react'
import cs from 'classnames'
import { Swiper, SwiperSlide } from 'swiper/react'
import 'swiper/css';

interface IProps {
  product?: IProduct
}



const tabsList = [
  {
    id: 1,
    name: 'Описание'
  },
  {
    id: 2,
    name: 'Наличие'
  },
  {
    id: 3,
    name: 'Доставка'
  },
  {
    id: 4,
    name: 'Оплата'
  },
]




const ProductDescription: FC<IProps> = ({ product }) => {
  const [activeTab, setActiveTab] = useState<string>("Описание")
  const {inStock} = product?.data?.attributes || {}
  let tabContent;

  switch (activeTab) {
    case "Описание":
      tabContent = <div>1</div>
      break;
    case "Наличие":
      tabContent = <div className={styles.inStockHolder} >
        <p>Склад: г. Нижний Новгород, ул. Кузбасская, 17В</p>
        <span></span>
        {inStock ? <p className={styles.inStock} > 
      <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1 3.35714L4.92857 7.28571L12 1" stroke="#00B302"/>
</svg>
<span>Есть в наличии</span>

       </p> :
       <p  className={styles.inStock}>
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path opacity="0.4" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="#BEBEBE"/>
<path d="M13.0604 12L15.3604 9.69998C15.6504 9.40998 15.6504 8.92999 15.3604 8.63999C15.0704 8.34999 14.5904 8.34999 14.3004 8.63999L12.0004 10.94L9.70035 8.63999C9.41035 8.34999 8.93035 8.34999 8.64035 8.63999C8.35035 8.92999 8.35035 9.40998 8.64035 9.69998L10.9404 12L8.64035 14.3C8.35035 14.59 8.35035 15.07 8.64035 15.36C8.79035 15.51 8.98035 15.58 9.17035 15.58C9.36035 15.58 9.55035 15.51 9.70035 15.36L12.0004 13.06L14.3004 15.36C14.4504 15.51 14.6404 15.58 14.8304 15.58C15.0204 15.58 15.2104 15.51 15.3604 15.36C15.6504 15.07 15.6504 14.59 15.3604 14.3L13.0604 12Z" fill="white"/>
</svg>
<span>Нет в наличии</span>
       </p>
       }
      </div>
      break;
    case "Доставка":
      tabContent = <div>
        Доставка по Нижнему Новгороду и Нижегородской обл.
бесплатная доставка товаров в Нижнем Новгороде, осуществляется в течении пяти дней при согласовании и сумме заказа не менее 20 000 руб. При заказе менее 20 000 руб. стоимость доставки составит 500 рублей;
Условия доставки по Нижегородской области оговариваются отдельно.

Доставка в другие регионы России
Стоимость доставки до терминала транспортной компании на заказы до 5000 рублей – 100 рублей. Свыше 5000 рублей доставка до терминала транспортной компании бесплатная.
Энергия
Деловые линии
ПЭК
Байкал сервис НН
Сдэк
Транспортная организация доставит груз в любом направлении по всей территории России. Стоимость доставки определяется тарифами транспортных компаний и зависит от удаленности Вашего населенного пункта от Москвы, способа доставки, срочности доставки, веса и габаритов товара.
Данная услуга позволяет максимально экономить Ваше время и силы.
      </div>
      break;
    case "Оплата":
      tabContent = <div>
      Способы оплаты:
Наличный расчет
Безналичный расчет
Банковские реквизиты для перечисления д/с:ООО  Хим-НН ИНН 5257135802 / КПП 525701001р/с 40702810290080000187 Филиал Приволжский  ПАО Банк  ФК Открытие  г. Нижний Новгород к/с 30101810300000000881 БИК 042282881р/с 40702810829050009036 Филиал «Нижегородский» АО «АЛЬФА-БАНК» г. Нижний Новгород к/с 30101810200000000824 БИК 042202824
      </div>
      break;

  }

  return (
    <div className={styles.root} >
      <nav className={styles.tabs} >
        <Swiper
        slidesPerView={'auto'}
        className={styles.tabsList} >
          {tabsList.map(({ id, name }) =>
            <SwiperSlide key={id} onClick={() => setActiveTab(name)} className={cs(styles.tab, activeTab === name && styles.tab__active)}  >
              {name}
              </SwiperSlide>
          )}
        </Swiper>
        <div className={styles.tabContent} >
          {tabContent}
        </div>
      </nav>
    </div>
  )
}

export default ProductDescription