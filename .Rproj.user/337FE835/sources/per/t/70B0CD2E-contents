import { reactShinyInput } from 'reactR';
import styles from './styles.module.css';
const NumericInput = ({ configuration, value, setValue}) => {
    console.log(configuration);
     let onChange = (event) => {
      let current_value = parseFloat(event.target.value);
      setValue(current_value);
    }
    let current_direction = {
      flexDirection:'row'
    }
    if(configuration[0] === 'arabic'){
      console.log("alllloooooo");
      current_direction = {
      flexDirection:'row-reverse'
      }
    }
  return (
  <div className = {styles.parent_container} style = {current_direction}>
      <div className = {styles.custom_input}>
        <input  type = "number" onChange = {(event) => onChange(event)} value = {value}/>
      </div>
      <div className = {styles.btns}>
      <button onClick = {() => {setValue(value + 1) }} className = {styles.quantity_up_custom} >+</button>
          <button onClick = {() => setValue(value - 1)} className = {styles.quantity_down_custom}>-</button>
      </div>
    </div>
  );

};


reactShinyInput('.numericInput_eduapps', 'InputWidgets.numericInput_eduapps', NumericInput);
