import axios from "axios";

// baseURL to make request to movie database
const instance = axios.create({
    baseURL : "https://api.themoviedb.org/3"
});

export default instance;