import React, { useRef, useState } from "react";
import useMousePosition from "../../customhooks/useMousePosition";

const MousePosition = () => {
  return (
    <div
      className=""
      style={{
        display: "flex",
        flexDirection: "row",
        flexWrap: "wrap",
        gap: "30px",
      }}
    >
      <Component1 />
      <Component2 />
      <Component3 />
      <Component4 />
    </div>
  );
};

export default MousePosition;

function Component1() {
  const { x, y } = useMousePosition();
  const div1Ref = useRef(null);
  const [position, setPosition] = useState({ x: 0, y: 0 });

  const handleMove = (event) => {
    const { left, top } = div1Ref.current.getBoundingClientRect();
    const relX = event.clientX - left;
    const relY = event.clientY - top;
    setPosition({ x: relX, y: relY });
  };

  return (
    <div
      ref={div1Ref}
      style={{
        width: "600px",
        height: "600px",
        border: "1px solid black",
        backgroundColor: "maroon",
      }}
      onMouseMove={handleMove}
    >
      <div style={{ position: "absolute", left: position.x, top: position.y }}>
        <img src="man.png" alt="Icon 1" height={24} width={24} />
      </div>
    </div>
  );
}

function Component2() {
  const { x, y } = useMousePosition();
  const div2Ref = useRef(null);
  const [position, setPosition] = useState({ x: 0, y: 0 });

  const handleMove = (event) => {
    const { left, top } = div2Ref.current.getBoundingClientRect();
    const relX = event.clientX - left;
    const relY = event.clientY - top;
    setPosition({ x: relX, y: relY });
  };

  return (
    <div
      ref={div2Ref}
      style={{
        width: "600px",
        height: "600px",
        border: "1px solid black",
        backgroundColor: "red",
      }}
      onMouseMove={handleMove}
    >
      <div style={{ position: "absolute", left: position.x, top: position.y }}>
        <img src="customer-1.png" alt="Icon 2" height={24} width={24} />
      </div>
    </div>
  );
}

function Component3() {
  const { x, y } = useMousePosition();
  const div3Ref = useRef(null);
  const [position, setPosition] = useState({ x: 0, y: 0 });

  const handleMove = (event) => {
    const { left, top } = div3Ref.current.getBoundingClientRect();
    const relX = event.clientX - left;
    const relY = event.clientY - top;
    setPosition({ x: relX, y: relY });
  };

  return (
    <div
      ref={div3Ref}
      style={{
        width: "600px",
        height: "600px",
        border: "1px solid black",
        backgroundColor: "blue",
      }}
      onMouseMove={handleMove}
    >
      <div style={{ position: "absolute", left: position.x, top: position.y }}>
        <img src="customer-2.png" alt="Icon 3" height={24} width={24} />
      </div>
    </div>
  );
}

function Component4() {
  const { x, y } = useMousePosition();
  const div4Ref = useRef(null);
  const [position, setPosition] = useState({ x: 0, y: 0 });

  const handleMove = (event) => {
    const { left, top } = div4Ref.current.getBoundingClientRect();
    const relX = event.clientX - left;
    const relY = event.clientY - top;
    setPosition({ x: relX, y: relY });
  };

  return (
    <div
      ref={div4Ref}
      style={{
        width: "600px",
        height: "600px",
        border: "1px solid black",
        backgroundColor: "green",
      }}
      onMouseMove={handleMove}
    >
      <div style={{ position: "absolute", left: position.x, top: position.y }}>
        <img src="customer-3.png" alt="Icon 3" height={24} width={24} />
      </div>
    </div>
  );
}
