import React, { Component } from 'react';
import ReceiptItemList from './ReceiptItemList';
import ReceiptForm from './ReceiptForm';

class Receipt extends Component {

	constructor(){
		super();
		this.state = {
			total: 0,
			itemList: []
		}
	}

	logSomething(){
		console.log("This works, because its not a callback.");
	}

	// Add a new item to the list
	// Clear the form
	// Update the total

	onFormSubmit(newItem){
		var newList = this.state.itemList.concat(newItem)

		var newTotal = this.state.total + newItem.price;

		this.setState({
			itemList: newList,
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
				<ReceiptForm onItemSubmit={this.onFormSubmit.bind(this)} />
				<ReceiptItemList items={this.state.itemList} />
				<span><strong>${total}</strong></span>
			</div>
		)
	}
}

export default Receipt;
