/** @jsx React.DOM */

var ServiceBox = React.createClass({
  getInitialState: function() {
    return { currentNamespace: "", members: [] };
  },
  render: function() {
    return (
      <div className="serviceBox">
        <NamespaceFilter currentNamespace={this.state.currentNamespace} namespaces={this.props.data.namespaces} />
        <div className="serviceList">
          <h2>Services</h2>
          <GenericList data={{kind: "services", members: this.state.members}} />
        </div>
      </div>
    );
  }
});
