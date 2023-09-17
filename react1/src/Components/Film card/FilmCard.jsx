import React from 'react'
import "./FilmCard.css"
import {Link} from "react-router-dom"
function FilmCard({name,description,slug,image,url}) {
    return (
        <div className='filmCard'>
            <div className='filmBox'>
                <div className='filmImgBx'>
                    <img src={`http://localhost:8000/${image}`} alt="" />
                </div>
                <div className='filmContentBx'>
                    <div>
                        <h2>{name}</h2>
                        <p>{description}</p>
                        <button><Link to={`${url}/${slug}`}>More</Link></button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default FilmCard
