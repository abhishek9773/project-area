import React,{useState} from 'react';
import {Text, View, Button} from 'react-native';

// var name = "";
function MyState (){
  const textName =() => {
    setName ("aditya")
  }
  const [name, setName] = useState("abhishek");

  return ( 
    <View> 
      <Text> this the set state {name}</Text>
      <Button title='update name' onPress={textName} ></Button>
    </View>
  );

}

export default MyState;