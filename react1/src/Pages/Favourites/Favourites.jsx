import React from 'react';
import "./Favourites.css";
function Favourites(props) {
    console.log(props.favourites);
    function removeFromFavourites(e,id){
      e.preventDefault();
      props.setFavourites(props.favourites.filter(title=>title.id!==id))
    }
  return (
  <div id='favouritesPage'>
      <h1>Favourites</h1>
          { props.favourites.length===0? (<h1>You don't have any favourite films yet.</h1>): props.favourites.map((title)=>(
           <div key={title.id} className='favouritesFilmWrap'>
              <div className='favouritesFilm'>
                  <div className="favouritesInfo">
                    <h1>{title.name}</h1>
                    <p>{title.description}</p>
                  </div>
                  <div className='favouritesImg'>
                    <img src={`http://localhost:8000/${title.image}`} alt="" />
                  </div>
              </div>
              <div className='favouritesBtnDiv'>
                <button className='favouritesBtn' onClick={(e)=>{removeFromFavourites(e,title.id);}}>Remove from favourites</button>
              </div>
               </div>))}

  </div>);
}

export default Favourites;
