import React from 'react'

const Item = (props) =>{
  const { store, item} = props
  return (
    <div>
      <h1><a href={"/"}>Happy Harbor Department Store</a></h1>
      <a>{store.name}</a>
      <a>{item.name}</a>
    </div> 
  )
}

export default Item;