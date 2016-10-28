import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';


class Hello extends Component {
  
  constructor(){
    super();
    this.state = {
      name: "Melanie",
    }
  }

  render() {
    return (
      <div className="Hello">
        Hello, {this.state.name}!
      </div>
    );
  }
}

export default Hello;
