import axios from "axios";

const BACKEND_URL = process.env.REACT_APP_BACKEND_URL;
const API_PREFIX = 'api/v1';
const API_PATH = `${BACKEND_URL}${API_PREFIX}`;

export default axios.create({
  baseURL: API_PATH,
  headers: {
    "Content-type": "application/json",
  },
});
