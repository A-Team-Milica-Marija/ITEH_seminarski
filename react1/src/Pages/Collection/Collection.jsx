import React, { Component } from 'react'
import "./Collection.css"
import axios from "axios"
import {Route } from 'react-router-dom'
import Category from '../../Components/Category/Category'
import CategoryCard from '../../Components/Category card/CategoryCard'
class Collection extends Component {
    constructor(props){
        super(props)
        this.state={
            data:[],
        }
    }

    componentDidMount(){
        axios.get("http://localhost:8000/api/show-genre").then((res)=>{
            this.setState({data:res.data.genre});
            console.log(res.data.genre);
        });
        
        console.log(this.props.favourites);
        console.log(this.props.setFavourites)
    }
    render(){
    return (
        <div id='collectionPage'>
            <h1>Collection</h1>
            <div id='categoryList'>
                {this.state.data.map((data)=>(
                    <CategoryCard key={data.id} name={data.name} description={data.description} slug1={data.slug} {...this.props}/>
                ))}
            </div>
                    <Route path="/collections/:slug1" render={props=>(<Category {...this.props} {...props} previous={this.props.match.params.path} favourites={this.props.favourites} setFavourites={this.props.setFavourites}/>)}/>
        </div>
    )
    }
}

export default Collection
