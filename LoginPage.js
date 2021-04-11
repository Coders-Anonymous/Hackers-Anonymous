import React, { Component } from 'react';
import { Counter, Register } from './Counter';
import { Display } from './FetchData';
import { Container, Col, Row, Jumbotron, Form, Button, Link } from 'reactstrap';

export class LoginPage extends Component {

    // Names all states in the file
    constructor(props) {
        super(props);
        this.state = {
            isDisplay: false,
            isRegister: false,
            isLoginPage: true,
            UserID: '',
            Password: '',
            ID: [],
            Pass: [],
        };
        this.enableDisplayPage = this.enableDisplayPage.bind(this);
        this.enableRegisterPage = this.enableRegisterPage.bind(this);
    }


    // Allows Page to move to either the display page(currently not set up)
    // or Register Page
    enableDisplayPage() {
        this.setState({
            isDisplay: true,
            isLoginPage: false,
        });
    }
    enableRegisterPage() {
        this.setState({
            isRegister: true,
            isLoginPage: false
        });
    }

    // Allows inputs in textboxes

    handleChangeUser(e) {
        this.setState({
            UserID: e.target.value
        });
    }

    handleChangePass(e) {
        this.setState({
            Password: e.target.value
        });
    }


    handleUserSave() {
        if (!this.state.UserID) {
            return;
        }

        this.setState({
            UserID: '',
            Password: '',
            ID: [...this.state.ID, this.state.UserID],
            Pass: [...this.state.Pass, this.state.Password]
        });
    }

    render() {
        var clientComp =  (
            <>
            <br/>
                <Container>
                    <h1 class="text-center">Login Page</h1>
                    <Row>
                        <Col md={{ span: 8, offset: 5 }}>
                            <Jumbotron>
                                    <Col>
                                        <h2>UserName</h2>
                                        <input type="text" value={this.state.UserID} placeholder="Enter UserID" onChange={this.handleChangeUser.bind(this)} name="UserID" />                                        
                                    </Col>
                                    <br />
                                    <Col>
                                        <h2>Password</h2>
                                        <input type="text" value={this.state.Password} placeholder="Enter Password" onChange={this.handleChangePass.bind(this)} name="Password" />
                                    </Col>
                                    <br />
                                    <Col>
                                        <button onClick={this.handleUserSave.bind(this)}>
                                            submit
                                        </button>
                                    </Col>
                                    <Col>
                                    <ul>
                                        <h6>ID's</h6>
                                            {this.state.ID.map((ID, i) => (
                                                <li key={`${ID}_${i}`}>
                                                    <b>{ID}</b>
                                                </li>
                                            ))}
                                        </ul>
                                    </Col>
                                    <Col>
                                        <ul>
                                        <h6>Pass</h6>
                                        {this.state.Pass.map((Pass, i) => (
                                            <li key={`${Pass}_${i}`}>
                                            <b>{Pass}</b>
                                            </li>
                                        ))}
                                        </ul>
                                    </Col>
                                </Jumbotron>
                        </Col>
                    </Row>
                </Container>
                <div class="text-center">
                    <button class="btn btn.link text-center" onClick={this.enableRegisterPage}> Click Me </button>
                </div>
            </>
        );
        // Lets react figure out which page it is jumping to
        return (
            <di>
                {this.state.isLoginPage ? clientComp : null}
                {this.state.isDisplay ? this.Display() : null}
                {this.state.isRegister ? this.Register() : null}
            </di>
        );
    }

    // What it uses to jump to the other page
    Display() {
        return (
            <Display />
        );
    }
    Register() {
        return (
            <Register />
        );
    }

}