import React from "react";
import Axios from "axios";

class App extends React.Component {
  constructor(props) {
    super(props);

    this.state = {

    };

    this.onInputChange = this.onInputChange.bind(this);
    this.add = this.add.bind(this);
    this.delete = this.delete.bind(this);
    this.get = this.get.bind(this);
  }

  componentDidMount() {
    this.get()
  }

  get() {
    Axios.get('/')
      .then((response) => {

      })
      .catch(error => {
        console.error(error);
      })
  }


  add(input) {
    Axios.post('/', {input})
    .then(res => {

    })
    .catch(error => {
      console.error(error);
    })
  }

  delete(id) {

  }

  onInputChange(event) {
    this.setState({

    });
  }

  render() {
    return (
      <div>
        <h1>Hello</h1>
      </div>
    );
  }
}

export default App;
