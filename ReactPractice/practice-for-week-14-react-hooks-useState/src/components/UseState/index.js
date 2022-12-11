import "./UseState.css"
import {useState} from 'react';



const UseState = () => {
  const themeOptions = ['light', 'dark']
  const [theme, setTheme] = useState('light')
  const [count, setCount] = useState(0)

  function incrementCount(){
    setCount((prevCount) =>{return prevCount +=1})
  }

  function decrementCount(){
    setCount((prevCount)=> {return prevCount-=1;})
  }

  function changeTheme(){
    if(theme === 'light'){
      setTheme('dark')
    }else{
      setTheme('light')
    }
  }
  return (
    <div className={theme.concat(' fun').concat(' state')}>
      <h1>UseState Component</h1>
      <button onClick={changeTheme}>Change Theme</button>
      <h1>Count: {count}</h1>
      <button onClick={incrementCount}>Increment</button>
      <button onClick={decrementCount}>Decrement</button>
    </div>
  );
};

export default UseState;