import React, { Component } from 'react';

class ReceiptForm extends Component {
	constructor(){
		super();
		this.state = {
			productName: "",
			productPrice: ""
		}
	}

	onProductNameChange(e){
		this.setState({productName: e.target.value})
	}

	onProductPriceChange(e){
		this.setState({productPrice: e.target.value})
	}

	newItemSubmitted(e){
		e.preventDefault();
		var newItem = {
			name: this.state.productName,
			price: Number(this.state.productPrice)
		};

		this.setState({
			productName: "",
			productPrice: ""
		});
		
		this.props.onItemSubmit(newItem)
	}

	render(){
		return(
			<form onSubmit={this.newItemSubmitted.bind(this)}>
				<input
					placeholder="Name"
					value={this.state.productName}
					onChange={this.onProductNameChange.bind(this)}
				/>

				<input
					placeholder="Price"
					value={this.state.productPrice}
					onChange={this.onProductPriceChange.bind(this)}
				/>
				
				<button type="submit">Add Item</button>
			</form>
		)
	}
}

export default ReceiptForm;
