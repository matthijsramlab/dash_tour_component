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
				'content': "This is my first step",
				# 'position': "center"
			},
			{
				'selector': '[id="my_second_step"]',
				'content': '',  # content empty updated in callback
			}
		],
		isOpen=False,
		id="tour_component",
		children=html.Div(),
		rounded=7
	),
	html.Button("Open Tour", id='open_tour_button'),
	html.Div("Test 1", id='my_first_step', style={'text-align': 'center'}),
	html.Div(style={'height': '200px'}),
	html.Div("Test 2", id='my_second_step', style={'text-align': 'center'}),
	html.Br(),
	html.Div(id='current_step_div', style={'text-align': 'center'})
])


@app.callback(
	Output('tour_component', 'isOpen'),
	[Input('open_tour_button', 'n_clicks')],
	prevent_initial_call=True
)
def open_tour_component(value):
	return True


@app.callback(
	Output('current_step_div', 'children'),
	Output('tour_component', 'children'),
	Input('tour_component', 'CurrentStep'),
	prevent_initial_call=True
)
def on_current_step_change(step):
	# Override the content at step two
	if step == 2:
		content = html.Div([
			dcc.Input(placeholder='some random input')
		])
	else:
		content = ""

	return html.H3(f'The current step is {step}'), content


if __name__ == '__main__':
	app.run_server(debug=True)
