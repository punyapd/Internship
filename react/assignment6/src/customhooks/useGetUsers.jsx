import { useState, useEffect } from "react";

const useGetUsers = () => {
  const [users, setUsers] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    const getUsers = async () => {
      setIsLoading(true);

      const response = await fetch(`http://localhost:3000/users`);

      const data = await response.json();
      setUsers(data);

      setIsLoading(false);
    };

    getUsers();
  }, []);

  return { users, isLoading };
};

export default useGetUsers;
