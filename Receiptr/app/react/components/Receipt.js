import React, { Component } from 'react';
import ReceiptItemList from './ReceiptItemList';
import ReceiptForm from './ReceiptForm';
import axios from 'axios';

class Receipt extends Component {

	constructor(){
		super();
		this.state = {
			total: 0,
			itemList: []
		}
	}

	componentDidMount() {
		axios.get('/api/items')
		.then((response) => {
			var total = response.data.reduce((sum, item) => {
				return sum + Number(item.price);
			}, 0)

			this.setState({ itemList: response.data, total: total })
		})

		.catch((err) => {
			console.log(err);
		})
	}

	logSomething(){
		console.log("This works, because its not a callback.");
	}

	onFormSubmit(newItem){

		axios.post('/api/items', { item: newItem })
			.then ((response) => {

			var newList = this.state.itemList.concat(newItem)

			var newTotal = this.state.total + newItem.price;

			this.setState({
				itemList: newList,
				total: newTotal
			})

			.catch((err) => {
				alert(err)
			})
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
