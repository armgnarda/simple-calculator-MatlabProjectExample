classdef calculator_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure    matlab.ui.Figure
        GridLayout  matlab.ui.container.GridLayout
        Screen      matlab.ui.control.EditField
        Button_20   matlab.ui.control.Button
        Button_15   matlab.ui.control.Button
        Button_14   matlab.ui.control.Button
        Button_13   matlab.ui.control.Button
        Button_17   matlab.ui.control.Button
        Button_11   matlab.ui.control.Button
        Button_10   matlab.ui.control.Button
        Button_9    matlab.ui.control.Button
        Button_18   matlab.ui.control.Button
        Button_7    matlab.ui.control.Button
        Button_6    matlab.ui.control.Button
        Button_5    matlab.ui.control.Button
        Button_4    matlab.ui.control.Button
        Button_3    matlab.ui.control.Button
        Button_2    matlab.ui.control.Button
        Button_19   matlab.ui.control.Button
        DELButton   matlab.ui.control.Button
    end

    
    methods (Access = private)
        
        function WriteDataToScreen(app, event)
            app.Screen.Value = [app.Screen.Value, event.Source.Text];
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: Button_10, Button_11, Button_13, 
        % ...and 12 other components
        function Button_Pushed(app, event)
            WriteDataToScreen(app, event)
        end

        % Button pushed function: Button_14
        function Equal_Pushed(app, event)
            app.Screen.Value = string(eval(app.Screen.Value));
        end

        % Button pushed function: DELButton
        function Delete_Pushed(app, event)
            app.Screen.Value = "";
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 516 480];
            app.UIFigure.Name = 'MATLAB App';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'2x', '1x', '1x', '1x', '1x'};
            app.GridLayout.BackgroundColor = [0.902 0.902 0.902];

            % Create DELButton
            app.DELButton = uibutton(app.GridLayout, 'push');
            app.DELButton.ButtonPushedFcn = createCallbackFcn(app, @Delete_Pushed, true);
            app.DELButton.BackgroundColor = [0.6353 0.0784 0.1843];
            app.DELButton.FontSize = 14;
            app.DELButton.FontWeight = 'bold';
            app.DELButton.Layout.Row = 2;
            app.DELButton.Layout.Column = 1;
            app.DELButton.Text = 'DEL';

            % Create Button_19
            app.Button_19 = uibutton(app.GridLayout, 'push');
            app.Button_19.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_19.FontSize = 18;
            app.Button_19.Layout.Row = 2;
            app.Button_19.Layout.Column = 2;
            app.Button_19.Text = '7';

            % Create Button_2
            app.Button_2 = uibutton(app.GridLayout, 'push');
            app.Button_2.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_2.FontSize = 18;
            app.Button_2.Layout.Row = 2;
            app.Button_2.Layout.Column = 3;
            app.Button_2.Text = '8';

            % Create Button_3
            app.Button_3 = uibutton(app.GridLayout, 'push');
            app.Button_3.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_3.FontSize = 18;
            app.Button_3.Layout.Row = 2;
            app.Button_3.Layout.Column = 4;
            app.Button_3.Text = '9';

            % Create Button_4
            app.Button_4 = uibutton(app.GridLayout, 'push');
            app.Button_4.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_4.FontSize = 24;
            app.Button_4.FontWeight = 'bold';
            app.Button_4.Layout.Row = 2;
            app.Button_4.Layout.Column = 5;
            app.Button_4.Text = '+';

            % Create Button_5
            app.Button_5 = uibutton(app.GridLayout, 'push');
            app.Button_5.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_5.FontSize = 24;
            app.Button_5.FontWeight = 'bold';
            app.Button_5.Layout.Row = 3;
            app.Button_5.Layout.Column = 5;
            app.Button_5.Text = '-';

            % Create Button_6
            app.Button_6 = uibutton(app.GridLayout, 'push');
            app.Button_6.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_6.FontSize = 18;
            app.Button_6.Layout.Row = 3;
            app.Button_6.Layout.Column = 4;
            app.Button_6.Text = '6';

            % Create Button_7
            app.Button_7 = uibutton(app.GridLayout, 'push');
            app.Button_7.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_7.FontSize = 18;
            app.Button_7.Layout.Row = 3;
            app.Button_7.Layout.Column = 3;
            app.Button_7.Text = '5';

            % Create Button_18
            app.Button_18 = uibutton(app.GridLayout, 'push');
            app.Button_18.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_18.FontSize = 18;
            app.Button_18.Layout.Row = 3;
            app.Button_18.Layout.Column = 2;
            app.Button_18.Text = '4';

            % Create Button_9
            app.Button_9 = uibutton(app.GridLayout, 'push');
            app.Button_9.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_9.FontSize = 24;
            app.Button_9.FontWeight = 'bold';
            app.Button_9.Layout.Row = 4;
            app.Button_9.Layout.Column = 5;
            app.Button_9.Text = '*';

            % Create Button_10
            app.Button_10 = uibutton(app.GridLayout, 'push');
            app.Button_10.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_10.FontSize = 18;
            app.Button_10.Layout.Row = 4;
            app.Button_10.Layout.Column = 4;
            app.Button_10.Text = '3';

            % Create Button_11
            app.Button_11 = uibutton(app.GridLayout, 'push');
            app.Button_11.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_11.FontSize = 18;
            app.Button_11.Layout.Row = 4;
            app.Button_11.Layout.Column = 3;
            app.Button_11.Text = '2';

            % Create Button_17
            app.Button_17 = uibutton(app.GridLayout, 'push');
            app.Button_17.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_17.FontSize = 18;
            app.Button_17.Layout.Row = 4;
            app.Button_17.Layout.Column = 2;
            app.Button_17.Text = '1';

            % Create Button_13
            app.Button_13 = uibutton(app.GridLayout, 'push');
            app.Button_13.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_13.FontSize = 24;
            app.Button_13.FontWeight = 'bold';
            app.Button_13.Layout.Row = 5;
            app.Button_13.Layout.Column = 5;
            app.Button_13.Text = '/';

            % Create Button_14
            app.Button_14 = uibutton(app.GridLayout, 'push');
            app.Button_14.ButtonPushedFcn = createCallbackFcn(app, @Equal_Pushed, true);
            app.Button_14.BackgroundColor = [0 1 0];
            app.Button_14.FontSize = 24;
            app.Button_14.FontWeight = 'bold';
            app.Button_14.Layout.Row = 5;
            app.Button_14.Layout.Column = 4;
            app.Button_14.Text = '=';

            % Create Button_15
            app.Button_15 = uibutton(app.GridLayout, 'push');
            app.Button_15.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_15.FontSize = 18;
            app.Button_15.Layout.Row = 5;
            app.Button_15.Layout.Column = 3;
            app.Button_15.Text = '0';

            % Create Button_20
            app.Button_20 = uibutton(app.GridLayout, 'push');
            app.Button_20.ButtonPushedFcn = createCallbackFcn(app, @Button_Pushed, true);
            app.Button_20.FontSize = 24;
            app.Button_20.Layout.Row = 5;
            app.Button_20.Layout.Column = 2;
            app.Button_20.Text = '.';

            % Create Screen
            app.Screen = uieditfield(app.GridLayout, 'text');
            app.Screen.HorizontalAlignment = 'right';
            app.Screen.FontSize = 30;
            app.Screen.BackgroundColor = [0.8 0.8 0.8];
            app.Screen.Layout.Row = 1;
            app.Screen.Layout.Column = [1 5];

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = calculator_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end