'use client'
import React, { FC, ReactNode } from 'react';
import styles from './Button.module.scss';


interface IProps {
  width?: string
  height?: string
  children?: ReactNode
  onClick?: (e: React.MouseEvent<HTMLButtonElement, MouseEvent>)=> void
  type?: 'button' | 'reset' | 'submit'
}

const Button: FC<IProps> = ({width="200px", height="40px", children, onClick, type}) => {
  return (
    <button type={type} onClick={ (e)=> onClick ? onClick(e) : null} style={{width, height}} className={styles.root} >{children}</button>
  )
}

export default Button