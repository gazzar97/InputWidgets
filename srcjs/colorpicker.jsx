import { reactShinyInput } from 'reactR';

const TextInput = ({ configuration, value, setValue }) => {
  return <input type='number' value={value} onChange={e => setValue(e.target.value)}/>;
};

reactShinyInput('.colorpicker', 'InputWidgets.colorpicker', TextInput);
