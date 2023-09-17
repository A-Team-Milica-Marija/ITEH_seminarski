import React from 'react'
import "./CategoryCard.css"
import dvd from "./dvd.jpg";

import {Link} from "react-router-dom"
function CategoryCard({slug1,name,description,match}) {
    return (
        <div className='categoryCard'>
            <div className='categoryBox'>
                <div className='categoryImgBx'>
                    <img src={dvd} alt="" />
                </div>
                <div className='categoryContentBx'>
                    <div>
                        <h2>{name}</h2>
                        <p>{description}</p>
                        <button >
                            <Link to={`${match.path}/${slug1}`}>Detaljnije</Link></button>
                    </div>
                </div>
            </div>
        </div>
    )
}

export default CategoryCard
