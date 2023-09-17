import React,{useState,useEffect} from 'react';
import "./Film.css";
import axios from 'axios';
import swal from 'sweetalert';
import {useHistory,Link} from "react-router-dom"

function Film(props) {
    const history = useHistory();
  const [loading, setLoading] = useState(true);
  const [title, setTitle] = useState([]);
  console.log(props);
  useEffect(() => {
    const genre_slug = props.match.params.slug1;
    const title_slug = props.match.params.slug;
    axios
      .get(`http://localhost:8000/api/view-title/${genre_slug}/${title_slug}`)
      .then((res) => {
        if (res.data.status === 200) {
          setTitle(res.data.title);
          setLoading(false);
          console.log(res.data.title);
        } else if (res.data.status === 404) {
          history.push("/collections");
          swal("Warning", res.data.message, "error");
        }
      });
  }, [props.match.params.genre, props.match.params.title, history]);

  
  if (loading) {
    return <h4>Loading title details...</h4>;
  } else {
    var in_stock = "";

    if(title.status==0){
    in_stock =
      <div>
        <label className="btn-sm btn-success px-4 mt-2">Available</label>
      </div>
    }
    else if(title.status==1){
        in_stock =
        <div>
          <label className="btn-sm btn-danger px-4 mt-2">Not available</label>  
        </div>
    }
  }
  function addingTitle(e,title,favourites){
      e.preventDefault();
      props.setFavourites([...favourites,title]);
  }
  return (
    <div id='filmPage'>
        <div className="filmPageInfoWrap">
          <div className="filmPageImg">
            <img
              src={`http://localhost:8000/${title.image}`}
              alt={title.name}
              className="w-100"
            />
          </div>

          <div className="filmPageInfo">
            <h2 className="filmTitle">
              {title.name}<br/>
            </h2>
            <span className="filmdistributor">
                {title.distributor}
              </span>
            <br/>
            <h4 id='filmTitle'>{title.producer}</h4><br/>
            <h5 className="filmSummary">Summary</h5>
            <p id='filmDescription'>{title.description}</p><br/>
            <h4 className="filmPrice">
              Average Price:
              &ensp;{title.price}din
            </h4><br/>
            <div id='filmInStock'>
                {in_stock}
            </div>
            <button onClick={(e)=>{addingTitle(e,title,props.favourites);}} type="button" className="filmBtn1">
              Add to Favourites
            </button>
          </div>
        </div>
        <Link id='filmBack' to={`/collections/${props.match.params.slug1}`}>Back</Link>
  </div>
  );
}

export default Film;
