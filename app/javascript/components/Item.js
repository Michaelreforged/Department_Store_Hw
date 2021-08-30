import React from 'react'

const Item = (props) =>{
  const { store, item} = props
  return (
    <div>
      <h1><a href={"/"}>Happy Harbor Department Store</a></h1>
      <h3>You are in the {store.name} Department</h3>
      <a>{item.name}</a>
      <a>Price: ${item.price}</a>
      <p/>
      <a href = {`/stores/${store.id}`}>Back to {store.name}</a>
      <a href = {`/stores/`}>Back to Stores</a>
    </div> 
  )
}

export default Item;