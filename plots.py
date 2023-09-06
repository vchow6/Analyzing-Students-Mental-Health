# Import plotly packages
import plotly.express as px
import plotly.graph_objects as go

# Create a histogram figure
fig = px.histogram(data_frame=data, x="ToDep", color="inter_dom", title="Distribution of the totla scores from the PHQ-9 test",
    labels={"inter_dom":"Type of Student", "ToDep":"Total PHQ-9 Scores"})
fig.show()

# Create a box plot figure
fig = px.box(data_frame=data, x="ToDep", color="inter_dom", hover_data=["Age"], points="all", title="Box plot of the total scores from the PHQ-9 test", labels={"inter_dom":"Type of Student", "ToDep":"Total PHQ-9 Scores"})
fig.show()

# Correlation Plot
# List the columns that are continuous variables
continuous_variables = ['Age', 'Stay', 'Japanese', 'English', 'ToDep', 'ToSC', 'APD', 'AHome', 'APH', 'Afear', 'ACS', 'AGuilt', 'AMiscell', 'ToAS', 'Partner', 'Friends', 'Parents', 'Relative', 'Profess', 'Phone', 'Doctor', 'Reli', 'Alone', 'Others', 'Internet']
data_cont = data[continuous_variables]
data_corr = data_cont.corr(method='pearson')

# Build the Heatmap
fig = go.Figure(go.Heatmap(x=data_corr.columns, y=data_corr.columns, z=data_corr.values.tolist(), zmin=-1, zmax=1))
fig.update_layout(width=900, height=900)
fig.show()

# Create dropdown interative
fig = go.Figure()
for stu_type in ['Inter', 'Dom']:
    df = data[data.inter_dom == stu_type]
    fig.add_trace(go.Histogram(x=df["ToDep"], name=stu_type))
dropdown_buttons = [
    {'label':'All', 'method':'update', 'args':[{'visible': [True, True]}, {'title': 'All'}]},
    {'label':'International', 'method':'update', 'args':[{'visible': [True, False]}, {'title': 'International'}]},
    {'label':'Domestic', 'method':'update', 'args':[{'visible':[False, True]}, {'title':'Domestic'}]}
]
fig.update_layout(
    {'updatemenus':[{'type':"dropdown",
         'x': 1.3,
         'y': 0.5,
         'showactive':True,
         'active':0,
         'buttons': dropdown_buttons}]
    }
)
fig.show()
