import React, { useState } from 'react'
import "./MainMenu.css"
import {Switch , Link,Route} from "react-router-dom"
import Home from "../../Pages/Home/Home"
import AboutUs from '../../Pages/About us/AboutUs'
import Register from '../../Pages/Register/Register'
import LogIn from '../../Pages/LogIn/LogIn'
import Contact from '../../Pages/Contact/Contact'
import Collection from '../../Pages/Collection/Collection'
import Dashboard from '../../Pages/Dashboard/Dashboard'
import Favourites from '../../Pages/Favourites/Favourites'
import axios from 'axios'
import swal from 'sweetalert'
function MainMenu() {
    const[favourites,setFavourites]=useState([]);
    const[logout,setLogout]=useState(true);
    const logoutSubmit=(e)=>{
        e.preventDefault();
        if(!logout){
            axios.post(`http://localhost:8000/api/logout`).then(res=>{
          if(res.data.status==200){
            localStorage.removeItem("auth_token");
            localStorage.removeItem("auth_name");
            setLogout(true);
            swal("Success", "Logged Out", "success");
          }
        });
        }else{
            swal("Error", "You're not logged in", "error");
        }
    }
    return (
        <>
        <div id='meni'>
            <h1>ReelRush Reviews</h1>
            <ul>
                <li>
                    <Link  to="/home">
                        Home
                    </Link>
                </li>
                <li>
                    <Link to="/aboutus">About Us</Link>
                </li>
                <li>
                    <Link to="/contact">Contact</Link>
                </li>
                <li>
                    <Link to="/collections">Collection</Link>
                </li>
                <li>
                    <Link to="/login">Login</Link>
                </li>
                <li>
                    <Link to="/register">Register</Link>
                </li>
                <li>
                    <Link to="/favourites">Favourites</Link>
                </li>
                <li>
                    <a id='logout' onClick={(e)=>{logoutSubmit(e)}}>Log out</a>
                </li>
            </ul>
        </div>
        <Switch>
            <Route path="/home" render={props=>(<Home {...props} logout={logout}/>)}/>
            <Route  path="/aboutus">
                <AboutUs/>
            </Route>
            <Route  path="/collections" render={props=>(<Collection {...props} setFavourites={setFavourites} favourites={favourites}/>)}/>
            <Route  path="/contact">
                <Contact/>
            </Route>
            <Route  path="/login" render={props=>(<LogIn {...props} logout={logout} setLogout={setLogout}/>)}/>
            <Route  path="/register" render={props=>(<Register {...props} setLogout={setLogout}/>)}/>
            <Route path="/admin" render={(props)=>(<Dashboard  {...props} />)} />
            <Route path="/favourites" render={(props)=>(<Favourites {...props} favourites={favourites} setFavourites={setFavourites}/>)}/>
        </Switch>
        </>
    )
}

export default MainMenu
