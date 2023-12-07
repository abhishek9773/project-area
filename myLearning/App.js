import {View, Text, StyleSheet, Button} from 'react-native';
import Login from './app/Pages/Login';
import UserData from './app/Pages/UserData';
import MyButton from './app/Pages/Button';
import MyState from './app/Pages/StateManager';

const  name = "hellow ";
var  age = 21;
export default function App (){
  return ( 
    <View> 
    <Text> this is my name </Text>
    {/* <Login/>      */}
    <Button title='Press here'>  </Button>
    <Button title='login'> here i shelp you </Button>
    <View>
      <Button title='here to help you '></Button>
    </View>
    <Text style={{fontSize:24}}>here am are  here {name}</Text>
    <Text> you are {age<20?"child":"adult"}</Text>
    <UserData/>
    <MyButton/>
    <MyState/>
    </View>

  );
}

