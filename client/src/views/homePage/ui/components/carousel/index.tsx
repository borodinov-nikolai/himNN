'use client'
import styles from './Carousel.module.scss';
import React from 'react';
import { Swiper, SwiperSlide } from 'swiper/react';
import { Autoplay, Pagination } from 'swiper/modules';
import 'swiper/css';
import 'swiper/css/pagination';
import cs from 'classnames';
import Button from '@/shared/ui/button';



type Slide = {
    id: number
    title: string
    description: string[]
    image: string

}

const slidesList: Slide[] = [
    {
        id: 1,
        title: "Паронит ПОН-Б 3мм (1500х1700)",
        description: ['ГОСТ 481-80', 'В наличии'],
        image: "/images/carousel_1.jpg"
    },
    {
        id: 2,
        title: "Паронит ПОН-Б 3мм (1500х1700)",
        description: ['ГОСТ 481-80', 'В наличии'],
        image: "/images/carousel_2.jpg"
    },
    {
        id: 3,
        title: "Паронит ПОН-Б 3мм (1500х1700)",
        description: ['ГОСТ 481-80', 'В наличии'],
        image: "/images/carousel_3.jpg"
    },
    {
        id: 4,
        title: "Паронит ПОН-Б 3мм (1500х1700)",
        description: ['ГОСТ 481-80', 'В наличии'],
        image: "/images/carousel_4.jpg"
    },
]



const Carousel = () => {

    return (
        <Swiper
        className={styles.root}
         modules={[Autoplay, Pagination]}
            spaceBetween={0}
            navigation={true}
            autoplay={{
                delay: 4000,
                disableOnInteraction: false
            }}
            speed={800}
            slidesPerView={1}
            pagination={{
                clickable: true,
            }}
            loop={true}
        >
           {slidesList?.map(({id, title, description, image})=> <SwiperSlide style={{backgroundImage: `url(${image})`}} key={id} className={styles.slide} >
                
                <div className={styles.slideContent} >
                    <div className={cs('container', styles.slideContent_inner)} >
                        <h2>{title}</h2>
                        <ul>
                            {description.map((item, i)=> 
                            <li key={i} >{item}</li>
                            )}
                        </ul>
                        <Button>Перейти в каталог</Button>
                        
                    </div>
                </div>
                
          <div className={styles.mask} ></div>
              
                </SwiperSlide>) }


  
  
  


        </Swiper>
    );


}

export default Carousel