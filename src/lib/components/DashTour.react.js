import React, {Component} from 'react';
import PropTypes from 'prop-types';
import Tour from "reactour";
import '../components/css/DashTour.css'

export default class DashTour extends Component {
    constructor(props) {
        super(props);
    }

    closeTour = () => {
        // eslint-disable-next-line no-invalid-this
        this.props.setProps({ isOpen: false});
    };

    handleCurrentStepChange = (e) => {
        // eslint-disable-next-line no-unused-expressions
        console.log(`The current step is ${e + 1}`)
        // eslint-disable-next-line no-invalid-this,no-unused-vars
        const {setProps, CurrentStep} = this.props;
        setProps({CurrentStep: e + 1});
    };

    render() {
        return (
                <Tour
                    onRequestClose={this.closeTour}
                    getCurrentStep={this.handleCurrentStepChange}
                    {...this.props}

                />
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
            PropTypes.string,
            // PropTypes.element,
            // PropTypes.func,
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
    setProps: PropTypes.func,

    /**
     * Content to be rendered
     * Type: node | elem
     */
    children: PropTypes.PropTypes.oneOfType([PropTypes.node, PropTypes.string]),

    /**
     * Custom class name to add to the Helper
     * Type: string
     */
    className: PropTypes.string,

    /**
     * Close the Tour by clicking the Mask
     * Type: bool
     */
    closeWithMask: PropTypes.bool,

    /**
     * Disable interactivity with Dots navigation in Helper
     * Type: bool
     */
    disableDotsNavigation: PropTypes.bool,

    /**
     * Disable the ability to click or intercat in any way with the Highlighted element
     * Type: bool
     */
    disableInteraction: PropTypes.bool,

    /**
     * Disable all keyboard navigation (next and prev step) when true, disable only selected keys when array
     * Type: bool | array(['esc', 'right', 'left'])
     */
    disableKeyboardNavigation: PropTypes.oneOf([
        PropTypes.bool,
        PropTypes.array
    ]),

    /**
     * The Current step
     */
    CurrentStep: PropTypes.number,

    /**
     * Programmatically change current step after the first render, when the value changes
     */
    goTopStep: PropTypes.number,

    /**
     * Custom class name to add to the element which is the overlay for the target element when disableInteraction
     */
    highlightedMaskClassName: PropTypes.string,

    /**
     * Tolerance in pixels to add when calculating if an element is outside viewport to scroll into view
     */
    inViewThreshold: PropTypes.number,

    /**
     * Custom class name to add to the Mask
     */
    maskClassName: PropTypes.string,

    /**
     * Extra Space between in pixels between Highlighted element and Mask
     */
    maskSpace: PropTypes.number,

    /**
     * Beautify Helper and Mask with border-radius (in px)
     */
    rounded: PropTypes.number,

    /**
     * Smooth scroll duration when positioning the target element (in ms)
     */
    scrollDuration: PropTypes.number,

    /**
     * Offset when positioning the target element after scroll to it
     */
    scrollOffset: PropTypes.number,

    /**
     * Show/Hide Helper Navigation buttons
     */
    showButtons: PropTypes.bool,

    /**
     * Show/Hide Helper Close button
     */
    showCloseButton: PropTypes.bool,

    /**
     * Show/Hide Helper Navigation Dots
     */
    showNavigation: PropTypes.bool,

    /**
     * Show/Hide number when hovers on each Navigation Dot
     */
    showNavigationNumber: PropTypes.bool,

    /**
     * Show/Hide Helper Number Badge
     */
    showNumber: PropTypes.bool,

    /**
     * Starting step when Tour is open the first time
     */
    startAt: PropTypes.number,

    /**
     * Value to listen if forced update is needed
     */
    update: PropTypes.string,

    /**
     * Delay time when forcing update. Useful when there are known animation/transitions
     */

    updateDelay: PropTypes.number

};

DashTour.defaultProps = {
    CurrentStep: 0,
    className: 'helper',
    rounded: 5,
    accentColor: "#5cb7b7"
};

