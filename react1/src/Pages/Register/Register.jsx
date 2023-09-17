import React,{ useState} from 'react';
import axios from 'axios';
import swal from 'sweetalert';
import { useHistory } from 'react-router-dom';
import "./Register.css"

function Register(props) {
    const history=useHistory();
    const [registerInput, setRegister] = useState({
        name: "",
        email: "",
        password: "",
        //error_list:[],
      });

      const handleInput = (e) => {
        e.persist();
        setRegister({ ...registerInput, [e.target.name]: e.target.value });
      };
    
      const registerSubmit = (e) => {
        e.preventDefault();
    
        if(registerInput.name!==""&&registerInput.email!==""&&registerInput.password!==""){
          axios.get("http://localhost:8000/sanctum/csrf-cookie").then(response => {
            console.log(response.headers);
            axios.post(`http://localhost:8000/api/register`, registerInput).then(res => {
              console.log(res.data);
                 if(res.data.validation_errors!=null&&res.data.validation_errors.password!=null){
                  res.data.validation_errors.password.map(message=>{
                    return swal("Success",message,"error");
                  });
                 }else if(res.data.validation_errors!=null&&res.data.validation_errors.name!=null){
                  res.data.validation_errors.name.map(message=>{
                    return swal("Success",message,"error");
                  });
                 }else if(res.data.validation_errors!=null&&res.data.validation_errors.email!=null){
                  res.data.validation_errors.email.map(message=>{
                    return swal("Success",message,"error");
                  });
                 }else{
                   console.log(res.data);
                  axios.defaults.headers.post['X-CSRF-Token'] = response.data.CSRFToken;
                  localStorage.setItem('auth_token',res.data.token);
                  localStorage.setItem('auth_name',res.data.username);
                  swal("Success","Successfully Registered","success");
                  history.push('/home');
                  props.setLogout(false);
                 }
            });
            
          });
        }else{
          swal("Error","Some felds are not filled","error");
                  history.push('/register');
        }
      }
    return (
        <div id='registerPage'>
            <form onSubmit={registerSubmit} id='registerForm'>
              <h1>Registration</h1>
              <div className='registerField'>
                <label>Full Name</label>
                <input type="text" name="name" onChange={handleInput} value={registerInput.name}  className="form-control"/>
              </div>
              <div className='registerField'>
                <label>Email</label>
                <input type="email" name="email" onChange={handleInput} value={registerInput.email} className="form-control"/>
              </div>
              <div className='registerField'>
                <label>Password</label>
                <input type="password" name="password" onChange={handleInput} value={registerInput.password} className="form-control" />
              </div>
              <div >
                <button type="submit" className="registerBtn"> Register </button>
              </div>
            </form>
        </div>
    )
}

export default Register
