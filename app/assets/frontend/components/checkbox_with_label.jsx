import React from 'react'

export default class CheckboxWithLabel extends React.Component {
  constructor(props) {
    super(props);
    this.state = { isChecked: false }
  }

  onChange() {
    this.setState({isChecked: !this.state.isChecked});
  }

  render() {
    var label = this.state.isChecked ? this.props.labelOn : this.props.labelOff;

    return (
      <label>
        <input
          type="checkbox"
          checked={this.state.isChecked}
          onChange={this.onChange.bind(this)}
        />
        {label}
      </label>
    );
  }
};