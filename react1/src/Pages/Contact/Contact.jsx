import React from 'react'
import "./Contact.css"
import { MdLocationOn,MdPhone,MdEmail, MdFacebook } from "react-icons/md";
function Contact() {
    var size="50px";
    return (
        <div id='contactPage'>
            <div id='contactFormAll'>
                <div id='contHeadContent'>
                    <h1>Contact us</h1>
                    <p>Dear visitor,<br/>Thank you for contributing to our service, we hope you enjoy your time here!<br/>
                    If you have any questions or inquiries please do not hesitate to contact us via any of the links above or by filling the form below.<br/>
                    We will do our best to answer you promptly!</p>
                </div>
                <div id='contactForm'>
                    <div id='conLeft'>
                        <div className='conLeftItem'>
                            <div className='iconCircle'>
                                <MdPhone size={size}/>
                            </div>
                            <div className='conLeftInfo'>
                                <h1>Phone</h1>
                                <p>(+381)432897</p>
                            </div>
                        </div>
                        <div className='conLeftItem'>
                            <div className='iconCircle'>
                                <MdFacebook size={size}/>
                            </div>
                            <div className='conLeftInfo'>
                                <h1>Facebook</h1>
                                <p>@ReelRush</p>
                            </div>
                        </div>
                        <div className='conLeftItem'>
                            <div className='iconCircle'>
                                <MdEmail size={size}/>
                            </div>
                            <div className='conLeftInfo'>
                                <h1>E-mail</h1>
                                <p>ReelRush@support.rs</p>
                            </div>
                        </div>
                    </div>
                    <form action="">
                        <div className='formData'>
                            <label htmlFor="fullName">Full name</label>
                            <input name="fullname" type='text'/>
                        </div>
                        <div className='formData'>
                            <label htmlFor="email">E-mail</label>
                            <input name="email" type='text'/>
                        </div>
                        <div className='formData'>
                            <label htmlFor="">Message</label>
                            <textarea type='text'/>
                        </div>
                        <button id='formDataBtn'>Send</button>
                    </form>
                </div>
            </div>
        </div>
    )
}

export default Contact
