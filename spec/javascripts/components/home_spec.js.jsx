describe('HomeIndex', function() {
  var element, component;

  beforeEach(function() {
    element  = document.createElement('div')
  })

  afterEach(function() {
    ReactDOM.unmountComponentAtNode(element)
  })

  it('renders Home component', function() {
    var rendered = ReactDOM.render(
      <HomeIndex />, element
    )
    expect(TestUtils.scryRenderedDOMComponentsWithClass(rendered, 'HomeIndex'))
      .to.not.be.empty
  })

  it('renders HomeTop component', function() {
    var rendered = ReactDOM.render(
      <HomeIndex />, element
    )

    expect(TestUtils.scryRenderedDOMComponentsWithClass(rendered, 'HomeTop'))
      .to.not.be.empty
  })

  it('renders HomeTop component', function() {
    var rendered = ReactDOM.render(
      <HomeIndex />, element
    )

    expect(TestUtils.scryRenderedDOMComponentsWithClass(rendered, 'HomePopular'))
      .to.not.be.empty
  })

  it('renders HomeTop component', function() {
    var rendered = ReactDOM.render(
      <HomeIndex />, element
    )

    expect(TestUtils.scryRenderedDOMComponentsWithClass(rendered, 'HomeFeatured'))
      .to.not.be.empty
  })
})