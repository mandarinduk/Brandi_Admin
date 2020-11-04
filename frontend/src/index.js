import React from "react";
import ReactDOM from "react-dom";
import Routes from "./Routes";
//import combineReducers from "./Store/Reducer/index";
import theme from "./Styles/Themes";
import GlobalStyle from "./Styles/GlobalStyle";
import { ThemeProvider } from "styled-components";

// Check if hot reloading is enable. If it is, changes won't reload the page.
// This is related to webpack-dev-server and works on development only.
if (module.hot) {
  module.hot.accept();
}

import { Provider } from "react-redux";
import { createStore } from "redux";
import rootReducer from "./Store/Reducer";
// reducer는 state를 update 시키는 함수
const store = createStore(rootReducer);

ReactDOM.render(
  <Provider store={store}>
    <ThemeProvider theme={theme}>
      <Routes />
      <GlobalStyle />
    </ThemeProvider>
  </Provider>,
  document.getElementById("root")
);
