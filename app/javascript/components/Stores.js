import React from 'react'

const Stores = (props) =>{
  const {store} = props
  return (
    <div>
      <h1><a href={"/"}>Happy Harbor Department Store</a></h1>
      {props.store.map((store) =>{
        return(
          <div key={store.id}>
          <p>{store.name}</p>
          <a href={`/stores/${store.id}`}>Department Items</a>
          {/* <a href={`/stores/${store.id}/edit`}>Edit Department</a> */}
          <a href={`/stores/${store.id}`} data-method="delete">Delete Department</a>
          </div>
      )})}
      <a href={`/stores/new`}>Create New Department</a>
    </div> 
  )
}

export default Stores;