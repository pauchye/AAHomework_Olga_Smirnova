import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchSearchGiphys} from './util/api_util'

console.log(fetchSearchGiphys)
window.fetchSearchGiphys = fetchSearchGiphys;

document.addEventListener('DOMContentLoaded', () => {
    console.log("hi2")

	const store = configureStore();
    const root = document.getElementById('root');
    
	ReactDOM.render(<Root store={store} />, root);
});
