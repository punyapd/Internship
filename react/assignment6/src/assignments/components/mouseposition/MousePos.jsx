import React from 'react';
import useMousePosition from '../../../customhooks/useMousePosition';

function Component1() {
  const { x, y } = useMousePosition();

  return (
    <div>
      <p>Mouse position in Component 1: {x}, {y}</p>
      <div style={{ position: 'absolute', left: x, top: y }}>
        <img src="man.png" alt="Icon 1" />
      </div>
    </div>
  );
}

function Component2() {
  const { x, y } = useMousePosition();

  return (
    <div>
      <p>Mouse position in Component 2: {x}, {y}</p>
      <div style={{ position: 'absolute', left: x, top: y }}>
        <img src="man.png" alt="Icon 2" />
      </div>
    </div>
  );
}

function Component3() {
  const { x, y } = useMousePosition();

  return (
    <div>
      <p>Mouse position in Component 3: {x}, {y}</p>
      <div style={{ position: 'absolute', left: x, top: y }}>
        <img src="man.png" alt="Icon 3" />
      </div>
    </div>
  );
}


function Component4() {
  const { x, y } = useMousePosition();

  return (
    <div>
      <p>Mouse position in Component 4: {x}, {y}</p>
      <div style={{ position: 'absolute', left: x, top: y }}>
        <img src="man.png" alt="Icon 4" />
      </div>
    </div>
  );
}
