import React from 'react'

const Store = (props) =>{
  const{store, item} = props
  return (
    <div key={store.id}>
      <h1><a href={"/stores"}>Happy Harbor Department Store</a></h1>
      <h2>{store.name}</h2>
      <h3>This department has</h3>
      {item.map((item) =>{
        return(
          <div key={item.id}>
          <p>{item.name} Price: ${item.price}</p>
          <a href = {`/stores/${store.id}/items/${item.id}`}>Show Item</a>
          <a href = {`/stores/${store.id}/items/${item.id}/edit`}>Edit Item</a>
          <a href = {`/stores/${store.id}/items/${item.id}`} data-method="delete">Delete Item</a>
          </div>
      )})}
          <a href = {`/stores/${store.id}/items/new`}>Add New Item</a>
          <a href = {`/stores`}>Back to Departments</a>
      </div> 
  )
}

export default Store;