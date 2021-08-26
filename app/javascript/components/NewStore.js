import React from 'react'

const NewStore = () =>{
  return (
    <div>
      <h1><a href={"/stores"}>Happy Harbor Department Store</a></h1>
      <p>Please enter new Department</p>
      <form action={"/stores"} method="post">
        <input name="store[name]"></input>
        <button type="submit">Submit</button> 
      </form>
      <a href = {`/stores/`}>Back</a>
    </div> 
  )
}

export default NewStore;