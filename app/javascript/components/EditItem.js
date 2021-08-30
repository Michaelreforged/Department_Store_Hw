import React from 'react'

const EditItem = (props) =>{
  const{store, item} = props
  return (
    <div key={store.id}>
      <h1><a href={"/stores"}>Happy Harbor Department Store</a></h1>
      <p>Please enter new Name for {item.name} from {store.name}</p>
      <form action={`/stores/${store.id}/items/${item.id}`} method ="post">
        <input type="hidden" name="_method" value="patch"/>
        <input defaultValue={item.name} name="item[name]"></input>
        <input defaultValue={item.price} name="item[price]"></input>
        <button type="submit">Submit</button> 
      </form>
      <a href = {`/stores/${store.id}/items`}>Back {store.name}</a>
      <a href = {`/stores/`}>Back Departments</a>
    </div> 
  )
}

export default EditItem;