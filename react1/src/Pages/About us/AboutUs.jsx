import React from 'react'
import "./AboutUs.css";
import slika1 from "./slika1.png";
import slika2 from "./slika2.png";
import slika3 from "./slika3.jpg";
import slika4 from "./slika4.jpg";
import { FaFacebookF,FaTwitter,FaGooglePlusG,FaLinkedin,FaInstagram } from "react-icons/fa";
function AboutUs() {
    return (
        <div>
            <div id='aboutUsWrap'>
                <div id='aboutUsContainer'>
                    <div className='clip clip1'>
                        <div className='aboutUsContent'>
                            <h2>Wonka (2023)</h2>
                            <p>Wonka trailer: Hugh Grant joins new prequel's cast as Oompa Loompa transformation revealed
                            </p>
                        </div>
                    </div>
                    <div className='clip clip2'>
                        <div className='aboutUsContent'>
                            <h2>Lion King DVD collection</h2>
                            <p> The "Lion King DVD Collection" is a comprehensive compilation of the iconic Lion King films, offering a nostalgic trip back to the Pride Lands with Simba, Timon, and Pumbaa. With its timeless storytelling and unforgettable characters, this collection is a must-have for both long-time fans and those looking to introduce the magic of the Lion King to a new generation.
                            </p>
                        </div>
                    </div>
                    <div className='clip clip3'>
                        <div className='aboutUsContent'>
                            <h2>The Batman Part II</h2>
                            <p>The Batman Part II is currently set to be released on October 3, 2025. The release date was announced as part of James Gunn and Peter Safran's updated DC universe slate. Warner Bros
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div id='teamWrap'>
                <section id='team'>
                    <div id='teamContainer'>
                        <div className='teamRow'>
                            <h1>Our Team</h1>
                            <p>Welcome to ReelRush<br/>Our goal is to make sure you get the best reading experience and finest book recommendations<br/>
                            Our team works relentlessly 24/7 to filter out the most suitable content made just for you!<br/>
                            We are always striving to be the best possible version of ourselves, while listening to your opinions and suggestions.<br/>
                            Enjoy your stay here, and happy reading!<br/>~ Founders</p>
                        </div>
                        <div className='teamRow mgt50px'>
                            <div className='teamColumn'>
                                <div className='teamImgBox'>
                                    <img src={slika1} alt="" />
                                </div>
                                <div className='teamDetails'>
                                    <h3>Marija<br/><span>CEO and Founder</span></h3>
                                    <ul>
                                        <li><a href="#"><FaFacebookF/></a></li>
                                        <li><a href="#"><FaTwitter/></a></li>
                                        <li><a href="#"><FaGooglePlusG/></a></li>
                                        <li><a href="#"><FaLinkedin/></a></li>
                                        <li><a href="#"><FaInstagram/></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div className='teamColumn'>
                                <div className='teamImgBox'>
                                    <img src={slika2} alt="" />
                                </div>
                                <div className='teamDetails'>
                                    <h3>Milica<br/><span>CEO and Founder</span></h3>
                                    <ul>
                                        <li><a href="#"><FaFacebookF/></a></li>
                                        <li><a href="#"><FaTwitter/></a></li>
                                        <li><a href="#"><FaGooglePlusG/></a></li>
                                        <li><a href="#"><FaLinkedin/></a></li>
                                        <li><a href="#"><FaInstagram/></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div className='teamColumn'>
                                <div className='teamImgBox'>
                                    <img src={slika3} alt="" />
                                </div>
                                <div className='teamDetails'>
                                    <h3>Aleksa<br/><span>HR director</span></h3>
                                    <ul>
                                        <li><a href="#"><FaFacebookF/></a></li>
                                        <li><a href="#"><FaTwitter/></a></li>
                                        <li><a href="#"><FaGooglePlusG/></a></li>
                                        <li><a href="#"><FaLinkedin/></a></li>
                                        <li><a href="#"><FaInstagram/></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div className='teamColumn'>
                                <div className='teamImgBox'>
                                    <img src={slika4} alt="" />
                                </div>
                                <div className='teamDetails'>
                                    <h3>Michael<br/><span>IT Support</span></h3>
                                    <ul>
                                        <li><a href="#"><FaFacebookF/></a></li>
                                        <li><a href="#"><FaTwitter /></a></li>
                                        <li><a href="#"><FaGooglePlusG /></a></li>
                                        <li><a href="#"><FaLinkedin /></a></li>
                                        <li><a href="#"><FaInstagram /></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div style={{clear:"both"}}></div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    )
}

export default AboutUs
