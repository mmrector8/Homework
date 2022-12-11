import { useEffect, useState } from "react";

const Main = () => {
    const [toggleOne, setToggleOne] = useState(false)
    const [toggleTwo, setToggleTwo] = useState(false)
    const [count, setCount] = useState(0)

    function toggleOneFn(){
        if(toggleOne){
            setToggleOne((toggleOne) => toggleOne=false);
        }else{
           setToggleOne((toggleOne) => toggleOne = true);
        }
    }
    function toggleTwoFn() {
        if (toggleTwo) {
            setToggleTwo((toggleTwo) => toggleTwo = false);
        } else {
            setToggleTwo((toggleTwo) => toggleTwo = true);
        }
    }
    function incrementCount(){
        setCount(prevCount=> prevCount +1 )
    }
    useEffect(()=>{
        console.log('UseEffect1 Ran')
        
    }, );

    useEffect(()=>{
        console.log('UseEffect2 Ran')
        if (toggleTwo) {
            console.log('toggleTwo slice of state is true so this code runs')
        }
    }, [toggleTwo])

    useEffect(() => {
       const myInterval = setInterval(() => {
            console.log(`UseEffect3 with interval number ${count} is running`);
        }, 1000);
        clearInterval(myInterval)
    }, [count]);

    return (
        <div>
            {console.log('rendered or re-rendered')}
            <h1>Main Component</h1>
            <button onClick={toggleOneFn}>ToggleOne</button>
            <button onClick={toggleTwoFn}>ToggleTwo</button>
            <button onClick={incrementCount}>Count:{count}</button>
        </div>
    );
}

export default Main;