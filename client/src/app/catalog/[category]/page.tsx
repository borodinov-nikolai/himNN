import React from 'react'



const page = ({params}: {params:{category:string}}) => {


  return (
    <main className='container' style={{fontSize:'48px'}} >{params.category}</main>
  )
}

export default page