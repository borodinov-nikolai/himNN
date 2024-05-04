import React from 'react'
import styles from './PaymentPage.module.scss'
import Breadcrumb from '@/shared/ui/breadcrumb'


export const PaymentPage = () => {
  return (
    <main className={styles.root} >
       <Breadcrumb items={[{title: 'Оплата'}]} />
         <h2>Оплата</h2>
        <h4>Способы оплаты:</h4>

        <ul>
          <li>Наличный расчет</li>
          <li>Безналичный расчет</li>
        </ul>

        <p>Банковские реквизиты для перечисления д/с: <br />
          ООО &quot;Хим-НН&quot;<br />
          ИНН 5257135802 / КПП 525701001<br />
          р/с 40702810290080000187 Филиал &quot;Приволжский&quot;  ПАО Банк &quot;ФК Открытие&quot; г. Нижний Новгород к/с 30101810245372202894 БИК 042202894<br />
          р/с 40702810829050009036 Филиал &quot;Нижегородский&quot; АО &quot;АЛЬФА-БАНК&quot; г. Нижний Новгород к/с 30101810200000000824 БИК 042202824<br />
          р/с 40702810101070031627 ПАО &quot;НБД-Банк&quot; г. Нижний Новгород к/с 30101810400000000705 БИК 042202705</p>
    </main>
  )
}
