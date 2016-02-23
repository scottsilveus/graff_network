import React from 'react'
import ReactDOM from 'react-dom'
import TestUtils from 'react-addons-test-utils'

import CheckboxWithLabel from '../../../app/assets/frontend/components/checkbox_with_label'


describe('CheckboxWithLabel', function () {
  var element;

  beforeEach(function() {
    element = document.createElement('div')
  })

  afterEach(function() {
    ReactDOM.unmountComponentAtNode(element)
  })

  it('changes the text after click', function () {
    // Render a checkbox with label in the document
    var checkbox = ReactDOM.render(
      <CheckboxWithLabel labelOn="On" labelOff="Off" />, element
    );
    var checkboxNode = ReactDOM.findDOMNode(checkbox);

    // Verify that it's Off by default
    expect(checkboxNode.textContent).to.eq('Off');

    // Simulate a click and verify that it is now On
    TestUtils.Simulate.change(
      TestUtils.findRenderedDOMComponentWithTag(
        checkbox,
        'input'
      )
    );
    expect(checkboxNode.textContent).to.eq('On');
  });
});
