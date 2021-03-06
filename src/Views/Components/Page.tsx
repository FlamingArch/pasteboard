import React, { FC } from "react";

export const Page: FC = (props) => {
  return (
    <div
      className="w-screen h-screen place-content-center grid bg-theme"
      style={{ gridTemplateRows: "auto 1fr" }}
    >
      {props.children}
    </div>
  );
};
