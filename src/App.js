import React from 'react';
import logo from './weatherlogo.jpg';
import './App.css';
import Weather from './Weather';

function App() {
  return (
    <>
      <div className="fullscreen-image">
        <img src={logo} alt="My Logo" class="logoweb"/>
      </div>
      <Weather />
    </>
  );
}

export default App;
