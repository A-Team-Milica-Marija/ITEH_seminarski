import React from 'react';
import "./Home.css";
import {Link,Redirect} from "react-router-dom"
function Home(props) {
    return (
        <div id='homePageWrap'>
            <div id='homePage'>
                <div id='mainText'>
                    <h1>Welcome to <br />
                        ReelRush Reviews
                    </h1>
                    <p id='homep'>All movies you wish about in one place!
                    </p>
                       {!props.logout&&(
                            <button id='homeBtn1'>
                            <Link to="/admin/dashboard">
                                Dashboard
                            </Link>
                            </button>
                       )}
                </div>
                <div id='footer'>
                    <div>
                        <div id='circle'></div>
                        <p id='copyright'>&copy; ReelRush, Beograd 2023</p>
                    </div>
                    <div>
                        <h3 className='footerTitle'>Genres</h3>
                        <ul>
                            <li>Sci-Fi</li>
                            <li>Fantacy</li>
                            <li>Romance</li>
                            <li>Adventure</li>
                            <li>Action</li>
                            <li>Horror</li>
                        </ul>
                    </div>
                    <div>
                        <h3 className='footerTitle'>Producers</h3>
                        <ul>
                            <li>Chrisopher Nolan</li>
                            <li>Peter Jackson</li>
                            <li>Steven Spielberg</li>
                            <li>James Cameron</li>
                            <li>Russo brothers</li>
                        </ul>
                    </div>
                    <div>
                        <h3 className='footerTitle'>About</h3>
                        <ul>
                            <li>Meet Our Crew</li>
                            <li>Privacy</li>
                            <li>Terms</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default Home
