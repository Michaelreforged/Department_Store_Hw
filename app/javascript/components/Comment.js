import React from 'react'

const Comment = (props) =>{
  const {store, item, comment} = props
  return (
    <div key={store.id}>
    <h1><a href={"/stores"}>Happy Harbor Department Store</a></h1>
    <h2>{store.name}: {item.name}</h2>
    <h3>This item comments are:</h3>
    <a>{comment.body}</a>
    <a href = {`/stores`}>Back to Departments</a>
    </div> 
  )
}

export default Comment