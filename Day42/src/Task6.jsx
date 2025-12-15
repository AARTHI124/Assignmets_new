import React from "react";

const Task6 = ({ name, job, avatar }) => (
  <div>
    <img src={avatar} alt={name} />
    <h3>{name}</h3>
    <p>{job}</p>
  </div>
);

export default Task6;
