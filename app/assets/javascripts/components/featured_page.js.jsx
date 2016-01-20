var FeaturedPage = React.createClass({

  render: function() {
    return (
      <div>
        <h1>Featured Content</h1>
        <form>
          <input type="checkbox" name="artist" value="artist" />Artists<br />
          <input type="checkbox" name="news" value="news" />News<br />
          <input type="checkbox" name="tutorial" value="tutorial" />Tutorial<br />
          <input type="checkbox" name="art" value="art"/>Art<br />
        </form>
        <h1>MEDIA STREAM</h1>
      </div>
    );
  }
});
