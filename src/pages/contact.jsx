import React, { useState, useContext } from "react";
import { Form, Button } from "react-bootstrap";

const MessageContext = React.createContext();

export const Contact = () => {
  return (
    <MessageProvider>
      <MessagesForm />
      <MessageList />
    </MessageProvider>
  );
};

function MessageProvider({ children }) {
  const [messages, setMessages] = useState([]);
  return (
    <MessageContext.Provider value={{ messages, setMessages }}>
      {children}
    </MessageContext.Provider>
  );
}

function MessagesForm() {
  const { messages, setMessages } = useContext(MessageContext);
  const [messageData, setMessageData] = useState({ email: "", text: "" });

  const handleInputChange = (event) => {
    setMessageData({
      ...messageData,
      [event.target.name]: event.target.value,
    });
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    if (!messageData.text.trim() === "" || !messageData.email.trim() === "")
      return;

    const newMessage = {
      email: messageData.email,
      text: messageData.text,
    };

    setMessages([...messages, newMessage]);
    setMessageData({ email: "", text: "" });
  };

  return (
    <>
      <p className="pt-3">Input Our Suggestions</p>
      <Form>
        <Form.Group>
          <Form.Control
            type="email"
            name="email"
            placeholder="Email"
            onChange={handleInputChange}
            value={messageData.email}
          />
          <br />
          <Form.Control
            as="textarea"
            name="text"
            placeholder="Your Message"
            onChange={handleInputChange}
            value={messageData.text}
          />
          <br />
          <Form.Label>Attached</Form.Label>
          <Form.Control type="file" size="sm" />
          <br />
          <Button className="btn btn-primary" onClick={handleSubmit}>
            Submit
          </Button>
        </Form.Group>
      </Form>
    </>
  );
}

function MessageList() {
  const { messages } = useContext(MessageContext);

  return (
    <>
      {messages.map((message, index) => (
        <div key={index}>
          <p>Email: {message.email}</p>
          <p>Message: {message.text}</p>
        </div>
      ))}
    </>
  );
}
