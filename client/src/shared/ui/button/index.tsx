'use client'
import React, { FC, ReactNode } from 'react';
import styles from './Button.module.scss';


interface IProps {
  width?: string
  height?: string
  children?: ReactNode
}

const Button: FC<IProps> = ({width="200px", height="40px", children}) => {
  return (
    <button style={{width, height}} className={styles.root} >{children}</button>
  )
}

export default Button