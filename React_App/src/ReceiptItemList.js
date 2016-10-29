import React, { Component } from 'react';

class ReceiptItemList extends Component {
	renderProducts(){
		return this.props.items.map((product) => {
			return <li>{product.name} - ${product.price}</li>
		})
	}

	render(){
		return(
			<ul>
				{ this.renderProducts() }
			</ul>
		)
	}
}

// Enables this document to be used in another file
export default ReceiptItemList;
