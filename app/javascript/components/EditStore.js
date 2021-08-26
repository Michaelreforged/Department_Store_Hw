import React from 'react'

const EditStore = (props) =>{
  const{store} = props
  return (
    <div key={store.id}>
      <h1><a href={"/stores"}>Happy Harbor Department Store</a></h1>
      <p>Please enter new Name for {store.name}</p>
      <form action={`/stores/${store.id}`} method ="post">
        <input type="hidden" name="_method" value="patch"/>
        <input defaultValue={store.name} name="store[name]"></input>
        <button type="submit">Submit</button> 
      </form>
      {/* <a href = {`/stores/`}>Back</a> */}
    </div> 
  )
}

export default EditStore;