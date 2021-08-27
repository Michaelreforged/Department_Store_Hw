import React from 'react'

const NewItem = (props) =>{
  const {store} = props
  return (
    <div>
      <h1><a href={"/stores"}>Happy Harbor Department Store</a></h1>
      <p>Please enter new Item for {store.name}</p>
      <form action={`/stores/${store.id}/items/`} method="post">
        <input name="item[name]"></input>
        <button type="submit">Submit</button> 
      </form>
      <a href = {`/stores/${store.id}`}>Back to department</a>
    </div> 
  )
}

export default NewItem;