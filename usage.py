import dash_tour_component
import dash
from dash.dependencies import Input, Output
import dash_html_components as html
import dash_core_components as dcc

app = dash.Dash(__name__)


app.layout = html.Div([
	dash_tour_component.DashTour(
		steps=[
			{
				'selector': '[id="my_first_step"]',
				'content': html.Div("test"),
			},
			{
				'selector': '[id="my_second_step"]',
				'content': 'This is my second Step',
			}
		],
		isOpen=True
	),
	html.Div("Test 1", id='my_first_step'),
	html.Div(style={'height': '400px'}),
	html.Div("Test 2", id='my_second_step')
])


# @app.callback(Output('output', 'children'), [Input('input', 'value')])
# def display_output(value):
# 	return 'You have entered {}'.format(value)


if __name__ == '__main__':
	app.run_server(debug=True)
