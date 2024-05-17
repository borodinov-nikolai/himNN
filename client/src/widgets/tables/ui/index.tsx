import React, { FC } from 'react'
import styles from './Tables.module.scss'
import { ITables } from '@/entities/table'




interface IProps {
  tables?: ITables
}

export const Tables: FC<IProps> = ({tables}) => {
  return (
    <div className={styles.root} >
    {tables?.data?.map(({id, attributes})=> {
      const headerRows = attributes?.headerRows || {}
      const bodyRows = attributes?.bodyRows || {}
   
      return <table className={styles.table} key={id} >
        { headerRows?.length > 0 && <thead key={id} >
          {
            headerRows?.map(({id, tableCells})=> 
              <tr key={id} >
                {tableCells.map(({id, text, rowSpan, colSpan})=> 
                <th key={id} rowSpan={rowSpan} colSpan={colSpan} >{text}</th>
                )}
              </tr>
          )
          }
          </thead>}
          {bodyRows?.length > 0 && <tbody>
            {
                    bodyRows?.map(({id, tableCells})=> 
                      <tr key={id} >
                        {tableCells.map(({id, text, rowSpan, colSpan})=> 
                        <td key={id} rowSpan={rowSpan} colSpan={colSpan} >{text}</td>
                        )}
                      </tr>
                  )
            }
          </tbody> }

      </table>
    })}

  </div>
  )
}
