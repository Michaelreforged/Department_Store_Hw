import React from 'react'

const Items = (props) =>{
  const {store, item} = props
  return (
    <div>
      <h1><a href={"/stores"}>Happy Harbor Department Store</a></h1>
      {item.map((item) =>{
        return(
          <div key={item.id}>
          <p>{item.name}</p>
          <a href={`/stores/${store.id}/items/${item.id}`}> Items</a>
          <a href={`/stores/${store.id}/items/${item.id}/edit`}>Edit item</a>
          <a href={`/stores/${store.id}/items/${item.id}`} data-method="destroy">Delete item</a>
          </div>
      )})}
          <a href = {`/stores/${store.id}/items/new`}>Add New Item</a>

    </div> 
  )
}

export default Items;