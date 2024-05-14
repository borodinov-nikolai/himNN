'use client'
import React, {useState } from 'react'
import styles from './OrderForm.module.scss'
import ProfileIcon from '@/shared/icons/profile'
import { Checkbox, Modal, Radio, Result } from 'antd'
import {SubmitHandler, useForm } from 'react-hook-form'
import cs from 'classnames'
import Button from '@/shared/ui/button'
import ConfirmedIcon from '@/shared/icons/confirmed'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import { clearCart, selectCart } from '@/entities/cart'
import { useRouter } from 'next/navigation'
import { useSendMessageMutation } from '@/entities/telegramBot'


interface IFields {
  name: string
  email: string
  phone: string
  comment: string
  company_name: string,
  legal_address: string,
  inn: string
  kpp: string
  bik: string
  checking_account: string
  bank_for_rc: string
  bank_town: string
  correspondent_account: string
  contact_person: string
}


const OrderForm = () => {
  const router = useRouter()
  const dispatch = useAppDispatch()
  const [person, setPerson] = useState<string>('person')
  const [confirmation, setConfirmation ] = useState<boolean>(false)
  const [confirmed, setConfirmed] = useState<boolean>(false)
  const [isModalOpen, setIsModalOpen] = useState<boolean>(false)
  const [confirmationError, setConfirmationError ] = useState<boolean>(false)
  const [sendOrder] = useSendMessageMutation()
  const cart = useAppSelector(selectCart)
  const { register, handleSubmit, formState: { errors}, reset, clearErrors} = useForm({
    defaultValues: {
      name: '',
      email: '',
      phone: '',
      comment: '',
      company_name: '',
      legal_address: '',
      inn: '',
      kpp: '',
      bik: '',
      checking_account: '',
      bank_for_rc: '',
      bank_town: '',
      correspondent_account: '',
      contact_person: ''

    }
  })


  const onSubmit: SubmitHandler<IFields> = (data) => {
    const {name, phone, email, comment, company_name, legal_address, inn, bik, kpp, checking_account, bank_for_rc, bank_town, correspondent_account, contact_person} = data || {}
    setConfirmation(true)
    if(!confirmed && confirmation) {
      setConfirmationError(true)
      
    } else if(confirmed && confirmation) {
      const date = new Date()
      const day = date.getDate()
      const month = date.getMonth() + 1
      const year = date.getFullYear()
      const hours = date.getHours().toString().padStart(2, '0');
      const minutes = date.getMinutes().toString().padStart(2, '0');
      const seconds = date.getSeconds().toString().padStart(2, '0');
      const fullDate = `${day}.${month}.${year} ${hours}.${minutes}.${seconds}`
       

       const personMessagePart =
       `Тип закачика: Физическое лицо
       Ф.И.О: ${name}
       Телефон: ${phone}
       E-mail: ${email}
       Комментарий: ${comment}`

       const legalEntityMessagePart = 
       `Тип заказчика: Юридическое лицо
       Название компании: ${company_name}
       Юридический адрес: ${legal_address}
       ИНН: ${inn}
       КПП: ${kpp}
       БИК: ${bik}
       Расчетный счет: ${checking_account}
       Банк для р/с: ${bank_for_rc}
       Город банка для р/с: ${bank_town}
       Корреспондентский счет: ${correspondent_account}
       Контактное лицо: ${contact_person}
       E-mail: ${email}
       Телефон: ${phone}
       Комментарий: ${comment}
       `

       const productsMessagePart =
        `товары:
          ${cart?.products?.map(({name, price, priceUnits, count})=>
         `
          Название: ${name}
          Цена: ${price} ${priceUnits}
          Количество: ${count}
          -------------------------------`
      ).join('')}

      Всего товаров: ${cart?.totalCount}
      На сумму: ${cart?.totalPrice} руб.
      ` 

      const message = 
      `Заказ от ${fullDate}

       ${person === 'person' ? personMessagePart : legalEntityMessagePart}

       ${productsMessagePart}
      `
      sendOrder(message)
      reset()
      clearErrors()
      window.localStorage.removeItem('cart')
      dispatch(clearCart())
      setConfirmation(false)
      setIsModalOpen(true)
    }
  }



  const handleReset = (value: string)=> {
       if(value !== person) {
             reset(),
             clearErrors()
       }
  }




  if(!confirmation) 
    {return (
    <form className={styles.root} onSubmit={handleSubmit(onSubmit)} >
      <div className={styles.header} >
        <ProfileIcon /> <p>Информация о покупателе</p>
      </div>
      <div className={styles.body} >

       
          <div className={(cs(styles.personType))} >
            <p>Тип платильщика</p>
            <Radio.Group className={styles.persontType_radioGroup} onChange={(e) => setPerson(e.target.value)} value={person} size='large' >
                    <Radio onClick={()=> handleReset('person')} value={'person'} >Физическое лицо</Radio>
                    <Radio onClick={()=> handleReset('legal entity')} value={'legal entity'} >Юридическое лицо</Radio>
                  </Radio.Group>
            <div>
          
               
       
              

            {person === 'person' ? <div className={styles.inputs} >

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
              <div className={styles.formItem} >
                <label htmlFor="comment">Комментарий к заказу</label>
                <textarea rows={5} id='comment' {...register('comment')} />
              </div>

            </div>
              :
              <div className={styles.inputs} >

                      <div className={styles.formItem} >
                <label htmlFor="company_name">Название компании</label>
                <input id='company_name' {...register('company_name', {required: 'Это поле обязательно'})} type="text" />
                <p className={styles.error} >{errors.company_name?.message}</p>
              </div>
                      <div className={styles.formItem} >
                <label htmlFor="legal_address">Юридический адрес</label>
                <input id='legal_address' {...register('legal_address')} type="text" />
              </div>

              <div className={styles.formItem} >
                <label htmlFor="inn">ИНН</label>
                <input id='inn' {...register('inn', {required: 'Это поле обязательно'})} type="text" />
                <p className={styles.error} >{errors.inn?.message}</p>
              </div>

              <div className={styles.formItem} >
                <label htmlFor="kpp">КПП</label>
                <input id='kpp' {...register('kpp')} type="text" />
               
              </div>
              <div className={styles.formItem} >
                <label htmlFor="bik">БИК</label>
                <input id='bik' {...register('bik')} type="text" />
               
              </div>
              <div className={styles.formItem} >
                <label htmlFor="checking_account">Расчетный счет</label>
                <input id='checking_account' {...register('checking_account')} type="text" />
               
              </div>
              <div className={styles.formItem} >
                <label htmlFor="bank_for_rc">Банк для р/с</label>
                <input id='bank_for_rc' {...register('bank_for_rc')} type="text" />
               
              </div>
              <div className={styles.formItem} >
                <label htmlFor="bank_town">Город банка для р/с</label>
                <input id='bank_town' {...register('bank_town')} type="text" />
               
              </div>
              <div className={styles.formItem} >
                <label htmlFor="correspondent_account">Корреспондентский счет</label>
                <input id='correspondent_account' {...register('correspondent_account')} type="text" />
               
              </div>
              <div className={styles.formItem} >
                <label htmlFor="contact_person">Контактное лицо</label>
                <input id='contact_person' {...register('contact_person', {required: 'Это поле обязательно'})} type="text" />
                <p className={styles.error} >{errors.inn?.message}</p>
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
              <div className={styles.formItem} >
                <label htmlFor="comment">Комментарий к заказу</label>
                <textarea rows={5} id='comment' {...register('comment')} />
              </div>

              </div>
            }


          </div>
        </div>

      </div>
      <div className={styles.nextBtn} ><Button  type='submit' >Далее</Button></div>
      <Modal closeIcon={false} footer={false} className={styles.modal} title='Оформление заказа' open={isModalOpen} >
        <div><Result
        status={'success'}
        title={'Запрос успешно отправлен! Наши менеджеры свяжутся с Вами в ближайшее время.'}
        
        />
               <Button width='100%' height='43px' onClick={()=>{ setIsModalOpen(false); router.replace('/')}} >Продолжить</Button>
        </div>
      </Modal>
    </form>


  )}

  if(confirmation) {
    return <div className={styles.confirmation} >
      <div className={styles.confirmationHeader} >
        <div><ConfirmedIcon/> <p>Информация о покупателе</p></div> <button onClick={()=>{ setConfirmation(false); setConfirmed(false)}} className={styles.changeFormBtn} >Изменить</button>
      </div>
      <div className={styles.confirmationText} >
        <Checkbox checked={confirmed} onChange={(e)=> {setConfirmed(e.target.checked); setConfirmationError(false)}} /> <p>Нажимая кнопку «Оформить заказ», я даю своё согласие на обработку моих персональных данных, в соответствии с Федеральным законом от 27.07.2006 года № 152-ФЗ «О персональных данных», на условиях и для целей, определённых в Согласии на обработку персональных данных</p>
      </div>
      <div className={styles.confirmBtn} > <Button onClick={handleSubmit(onSubmit)}  >Оформить заказ</Button> </div>
      { confirmationError && <p style={{marginTop: '10px', textAlign: 'center', fontSize: '14px'}} className={styles.error}>Пожалуйста, подтвердите согласие на обработку персональных данных</p>}
    </div>
  }

}

export default OrderForm