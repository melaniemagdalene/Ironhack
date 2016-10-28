import React, { Component } from 'react';

class Receipt extends Component {

	constructor(){
		super();
		this.state = {
			productName: "",
			productPrice: "",
			total: 0,
			itemList: []
		}
	}

	onProductNameChange(e){
		this.setState({productName: e.target.value})
	}

	onProductPriceChange(e){
		this.setState({productPrice: e.target.value})
	}

	logSomething(){
		console.log("This works, because its not a callback.");
	}

	// Add a new item to the list
	// Clear the form
	// Update the total

	onFormSubmit(e){
		e.preventDefault();

		var newList = this.state.itemList.concat({
			name: this.state.productName,
			price: this.state.productPrice
		})

		var newTotal = this.state.total + Number(this.state.productPrice);

		this.setState({
			itemList: newList,
			productName: "",
			productPrice: "",
			total: newTotal
		})
	}

	renderProducts(){
		return this.state.itemList.map((product) => {
			return <li>{product.name} - ${product.price}</li>
		})
	}

	render(){
		var { productName, productPrice, total } = this.state;

		console.log(productName, productPrice, total);
		return(
			<div>
				<form onSubmit={this.onFormSubmit.bind(this)}>
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

				<ul>
					{ this.renderProducts() }
				</ul>
				<span><strong>${total}</strong></span>
			</div>
		)
	}
}

export default Receipt;
