import React from 'react';
import {
  Route,
  Link,
  NavLink
} from 'react-router-dom';

import Red from './red';
import Green from './green';
import Blue from './blue';
import Violet from './violet';

class Rainbow extends React.Component {
  render() {
    return (
      <div>
        <h1>Rainbow Router!</h1>
        {/* Your links should go here */}
        <NavLink exact to="/red">Red</NavLink>
        <NavLink to='/red/orange' >Add orange</NavLink>
        <NavLink to='/red/yellow' >Add yellow</NavLink>
        <NavLink exact to='/blue' >Blue only</NavLink>
        <NavLink to='/blue/indigo' >Add indigo</NavLink>

        <div id="rainbow">
        <Route path="/red" component={Red} />
        <Route path="/green" component={Green} />
        <Route path="/blue" component={Blue} />
        <Route path="/violet" component={Violet} />
      

          {/* Your routes should go here */}
        </div>
      </div>
    );
  }
};

export default Rainbow;
