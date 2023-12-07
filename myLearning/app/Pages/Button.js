import {Button, Text ,View} from 'react-native';
import Login from './Login';

 function MyButton(){
  const thinking = () => { // this is call back function.
    console.warn("functon onpress is call");
    <Login/>
  };
  return( 
    <View>
      <Button title='onPress' color={'black'} onPress={thinking}></Button>
      <Doit name={"this is the LLLLLLLL"}/>
    </View>
  );

}
function Doit(propes){
  console.warn(propes);
  return ( 
    <View> 
      <Text>odit inow </Text>
    </View>
  )
}

export default MyButton;