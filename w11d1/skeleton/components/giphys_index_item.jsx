import React from 'react';

function GiphysIndexItem({ giphy }) {
  return (
    <li className="giphy-li">
      <img src={giphy.images.fixed_height.url} />
    </li>
  );
}
// img source - ??? checked solutions and did not get it
export default GiphysIndexItem;
