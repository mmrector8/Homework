import {createContext, useState, useContext } from 'react'
import speedy from '../pups/speedy-pup.jpg'

export const PupProvider = (props) => {
  const [puppyType, setPuppyType] = useState(speedy)
  return (
    <PupContext.Provider value ={{puppyType, setPuppyType}}>
      {props.children}
    </PupContext.Provider>
  )
}

export function usePuppyType(){
  return useContext(PupContext);
}

export const PupContext = createContext();
