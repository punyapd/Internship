import React from "react";
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
      <Box shape="traingle" />
      <Box shape="circle" />
      <Box shape="rectangle" />
      <Box shape="square" />
    </div>
  );
};

export default MousePosition;

function Box({ shape }) {
  const { position, handleMouseMove } = useMousePosition();

  return (
    <div
      style={{
        width: "600px",
        height: "300px",
        border: "1px solid black",
      }}
      className = "box-container"

      onMouseMove={handleMouseMove}
    >
      <div
        style={{
          position: "absolute",
          left: position.x,
          top: position.y,
        }}

      >
        <div className={`${shape}`}></div>
      </div>
    </div>
  );
}
