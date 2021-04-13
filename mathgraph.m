(* ::Package:: *)

ad11=AbsoluteDashing[{1,1}];
ab03=AbsoluteThickness[0.3];
ab05=AbsoluteThickness[0.5];
ab10=AbsoluteThickness[1];
ab20=AbsoluteThickness[2];
colBlk = GrayLevel[0];
colGry  = GrayLevel[0.5];
colLgtGry = GrayLevel[0.8];
smallimage = {130,100};
largeimage = {1,1}260;
imagepadding=40{{1,1},{1,1}};
gridlinestyle={Directive[ab03,colGry,ad11],Directive[ab03,colGry,ad11]};
SetOptions[GraphicsGrid,Spacings->{0,0},PlotRangePadding->{0,0}];
theStylesP={
	Frame->True,
	FrameStyle->ab03,
	Axes->{False,False},
	AxesStyle->gridlinestyle,
	ImageMargins->{{0,0},{0,0}},
	PlotRangePadding->{0,0},
	AspectRatio->1/GoldenRatio,
	ImageSize->largeimage,
	ImagePadding->imagepadding,
	DisplayFunction->Identity,
	GridLines->{Automatic,Automatic},
	GridLinesStyle->gridlinestyle,
	FrameTicksStyle->Directive[FontSize->8,FontFamily->"Times"]
};
theStyles={
	PlotMarkers->{Graphics[{Disk[]}],0.03},
	Joined->True,
	theStylesP
}//Flatten//Evaluate;

SetOptions[Plot,Evaluate[theStylesP]];
SetOptions[ListPlot,Evaluate[theStyles]];
SetOptions[ListLogLogPlot,Evaluate[theStyles]];
SetOptions[ListLogLinearPlot,Evaluate[theStyles]];

