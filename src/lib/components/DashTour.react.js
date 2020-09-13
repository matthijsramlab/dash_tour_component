import React, {Component} from 'react';
import PropTypes from 'prop-types';
import Tour from "reactour";


export default class DashTour extends Component {
    constructor(props) {
        super(props);
    }

    closeTour = () => {
        // eslint-disable-next-line no-invalid-this
        this.props.setProps({ isOpen: false });
    };

    render() {
        const {id, steps} = this.props;

        const new_steps = []
        for (const [index, value] of steps.entries()){
            console.log(value)
            console.log(index)
            value.content = () => (<div>{value.content}</div>)
            new_steps.push(value)
        }

        return (
            <div id={id}>
                <Tour
                    steps={new_steps}
                    isOpen={this.props.isOpen}
                    onRequestClose={this.closeTour}
                />
            </div>
        );
    }
}

DashTour.defaultProps = {};

DashTour.propTypes = {
    /**
     * The ID used to identify this component in Dash callbacks.
     */
    id: PropTypes.string,

    /**
     * Change --reactour-accent (defaults to accentColor on IE) css custom prop to apply color in Helper, number, dots, etc
     * Type: string
     * Default: string
     */
    accentColor: PropTypes.string,

    /**
     * Whether the Tour component is currently open
     */
    isOpen: PropTypes.bool,

    /**
     * The steps in the tour component
     */
    steps: PropTypes.arrayOf(PropTypes.shape({
        'selector': PropTypes.string,
        'content': PropTypes.oneOfType([
            PropTypes.node,
            PropTypes.element,
            PropTypes.func,
        ]).isRequired,
        'position':PropTypes.oneOfType([
            PropTypes.arrayOf(PropTypes.number),
            PropTypes.oneOf(['top', 'right', 'bottom', 'left', 'center']),
        ]),
        'action': PropTypes.func,
        'style': PropTypes.object,
        'stepInteraction': PropTypes.bool,
        'navDotAriaLabel': PropTypes.string,
        })),

    /**
     * Dash-assigned callback that should be called to report property changes
     * to Dash, to make them available for callbacks.
     */
    setProps: PropTypes.func
};

