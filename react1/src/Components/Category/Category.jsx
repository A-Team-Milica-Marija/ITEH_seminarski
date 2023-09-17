import React,{useEffect,useState} from 'react'
import "./Category.css"
import {useRouteMatch,Link, Route} from "react-router-dom"
import axios from "axios"
import FilmCard from '../Film card/FilmCard';
import Film from '../../Pages/Film/Film';

function Category(props) {
    const [titles,setTitles]=useState([]);
    const [category,setCategory]=useState({});
    let route = useRouteMatch();
    useEffect(() => {
        axios.get(`http://localhost:8000/api/get-title/${route.params.slug1}`).then(
        (res)=>{setTitles(res.data.title_data.title);
        setCategory(res.data.title_data.genre);   
    });
    }, [route.params.slug]);
    return (
        <div className='category'>
            <h1>{category.name}</h1>
            <div id='filmList'>
                {titles.map((title)=>(
                    <FilmCard key={title.id} name={title.name} description={title.description} slug={title.slug} image={title.image} url={route.url}/>
                ))}
            </div>
            <div id='categoryBack'>
                <Link to={`/collections`}>Back</Link>
            </div>
            <Route path="/collections/:slug1/:slug" render={props1=>(<Film {...props1} favourites={props.favourites} setFavourites={props.setFavourites}/>)}/>
        </div>
    )
}

export default Category
