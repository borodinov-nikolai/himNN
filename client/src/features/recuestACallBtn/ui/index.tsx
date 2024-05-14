'use client'
import Button from '@/shared/ui/button'
import styles from './RequestACallBtn.module.scss'
import { Checkbox, Modal, Result } from 'antd'
import React, { FC, ReactNode, useEffect, useState } from 'react'
import { SubmitHandler, useForm } from 'react-hook-form'
import { useSendMessageMutation } from '@/entities/telegramBot'



interface IProps {
   children: ReactNode
}

interface IFields {
  name: string
  phone: string
  email: string
}

export const RequestACallBtn:FC<IProps> = ({children}) => {
    const [isOpen, setIsOpen] = useState<boolean>(false)
    const [confirmationError, setConfirmationError] = useState<boolean>(false)
    const [isSuccess, setIsSuccess] = useState<boolean>(false)
    const [isConfirmed, setIsConfirmed] = useState<boolean>(false)
    const [sendMessage] = useSendMessageMutation()
    const {register, handleSubmit, formState: {errors}, reset, clearErrors} = useForm({
      defaultValues: {
        name: '',
        phone: '',
        email: '',
      }
    })
 

    const handleCancel = ()=> {
     setIsOpen(false)
     reset()
     clearErrors()
     setConfirmationError(false)
     setIsSuccess(false)
    }

    const onSubmit : SubmitHandler<IFields> = (data)=> {
      const {name, phone, email} = data || {}
      const date = new Date()
      const day = date.getDate()
      const month = date.getMonth() + 1
      const year = date.getFullYear()
      const hours = date.getHours().toString().padStart(2, '0');
      const minutes = date.getMinutes().toString().padStart(2, '0');
      const seconds = date.getSeconds().toString().padStart(2, '0');
      const fullDate = `${day}.${month}.${year} ${hours}.${minutes}.${seconds}`
       const message = 
       `Заказ обратного звонка от ${fullDate}

       Ф.И.О: ${name}
       Телефон: ${phone}
       E-mail: ${email}
       `

      if(isConfirmed) {
        sendMessage(message)
        setIsSuccess(true)
      } else {
        setConfirmationError(true)
      }
  
    
    }

    useEffect(()=> {

      if(isConfirmed) {
        setConfirmationError(false)
      }  

    },[isConfirmed])

  return (
    <>
      <Button onClick={(e)=>{setIsOpen(true)}} >{children}</Button>
      <Modal className={styles.modal} title={"Заказать звонок"} onCancel={handleCancel} open={isOpen} footer={false}>
       {!isSuccess ? <form  className={styles.form} onSubmit={handleSubmit(onSubmit)}>
          <div className={styles.formItems} >
          <div className={styles.formItem} >
                <label htmlFor="name">Ф. И. О.</label>
                <input id='name' {...register('name', {required: 'Это поле обязательно'})} type="text" />
                <p className={styles.error} > {errors.name?.message} </p>
              </div>

              <div className={styles.formItem} >
                <label htmlFor="email">E-mail</label>
                <input id='email' {...register('email', {required: 'Это поле обязательно', pattern: { value: /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/, message: 'пожалуйста введите корректный email' } })} type="text" />
                <p className={styles.error} >{errors.email?.message}</p>
              </div>
              <div className={styles.formItem} >
                <label htmlFor="phone">Номер телефона</label>
                <input id='phone' {...register('phone', {required: 'Это поле обязательно', pattern: {
            value: /^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$/,
            message: "Пожалуйста введите корректный номер"
          }})} type="text" />
                <p className={styles.error} >{errors.phone?.message}</p>
              </div>
          </div>
          <div className={styles.sendBtn} ><Button type='submit' >Отправить</Button></div>
          { confirmationError && <p style={{marginTop: '10px', textAlign: 'center', fontSize: '14px'}} className={styles.error}>Пожалуйста, подтвердите согласие на обработку персональных данных</p>}
          <div className={styles.confirmationText} >
            <Checkbox checked={isConfirmed} onChange={(e)=> setIsConfirmed(e.target.checked)} /> <p>Нажимая кнопку «Отправить», я даю своё согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года № 152-ФЗ «О персональных данных», на условиях и для целей, определённых в Согласии на обработку персональных данных</p>
          </div>
        </form>:
        <div><Result
        status={'success'}
        title={'Запрос успешно отправлен! Наши менеджеры свяжутся с Вами в ближайшее время.'}
      
        />
        <div className={styles.confirmBtn} ><Button onClick={handleCancel} >Продолжить</Button></div>
        </div>
        }
      </Modal>
    </>
  
  )
}
