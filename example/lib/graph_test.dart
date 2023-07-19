import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer_pro/sizer.dart';

class GraphTest extends StatefulWidget {
  const GraphTest({super.key});

  @override
  State<GraphTest> createState() => _GraphTestState();
}

class _GraphTestState extends State<GraphTest> {
  var temp2 = [
    [1689565500, 19594.25],
    [1689565560, 19583.4],
    [1689565620, 19581.8],
    [1689565680, 19578.55],
    [1689565740, 19580.2],
    [1689565800, 19597.5],
    [1689565860, 19588.85],
    [1689565920, 19582.6],
    [1689565980, 19579.85],
    [1689566040, 19577.7],
    [1689566100, 19576.0],
    [1689566160, 19572.55],
    [1689566220, 19565.3],
    [1689566280, 19567.9],
    [1689566340, 19570.75],
    [1689566400, 19580.4],
    [1689566460, 19580.55],
    [1689566520, 19585.1],
    [1689566580, 19580.8],
    [1689566640, 19585.0],
    [1689566700, 19581.2],
    [1689566760, 19572.95],
    [1689566820, 19581.1],
    [1689566880, 19584.75],
    [1689566940, 19587.15],
    [1689567000, 19594.1],
    [1689567060, 19585.45],
    [1689567120, 19587.05],
    [1689567180, 19588.85],
    [1689567240, 19586.75],
    [1689567300, 19593.85],
    [1689567360, 19590.05],
    [1689567420, 19593.45],
    [1689567480, 19600.8],
    [1689567540, 19605.85],
    [1689567600, 19609.15],
    [1689567660, 19614.35],
    [1689567720, 19610.2],
    [1689567780, 19607.0],
    [1689567840, 19607.15],
    [1689567900, 19605.05],
    [1689567960, 19601.25],
    [1689568020, 19595.3],
    [1689568080, 19597.25],
    [1689568140, 19602.25],
    [1689568200, 19599.3],
    [1689568260, 19606.4],
    [1689568320, 19612.8],
    [1689568380, 19616.95],
    [1689568440, 19621.4],
    [1689568500, 19625.1],
    [1689568560, 19627.75],
    [1689568620, 19621.1],
    [1689568680, 19625.8],
    [1689568740, 19624.9],
    [1689568800, 19628.5],
    [1689568860, 19628.35],
    [1689568920, 19626.65],
    [1689568980, 19628.8],
    [1689569040, 19631.4],
    [1689569100, 19633.65],
    [1689569160, 19630.4],
    [1689569220, 19639.5],
    [1689569280, 19638.5],
    [1689569340, 19634.65],
    [1689569400, 19634.05],
    [1689569460, 19627.95],
    [1689569520, 19625.65],
    [1689569580, 19619.75],
    [1689569640, 19610.55],
    [1689569700, 19608.0],
    [1689569760, 19610.75],
    [1689569820, 19610.95],
    [1689569880, 19606.55],
    [1689569940, 19603.5],
    [1689570000, 19614.75],
    [1689570060, 19615.65],
    [1689570120, 19623.4],
    [1689570180, 19621.5],
    [1689570240, 19622.7],
    [1689570300, 19620.85],
    [1689570360, 19618.85],
    [1689570420, 19610.1],
    [1689570480, 19615.0],
    [1689570540, 19620.85],
    [1689570600, 19616.25],
    [1689570660, 19616.15],
    [1689570720, 19617.15],
    [1689570780, 19617.2],
    [1689570840, 19615.05],
    [1689570900, 19611.9],
    [1689570960, 19615.95],
    [1689571020, 19617.0],
    [1689571080, 19620.2],
    [1689571140, 19621.7],
    [1689571200, 19621.6],
    [1689571260, 19616.75],
    [1689571320, 19621.5],
    [1689571380, 19623.1],
    [1689571440, 19625.0],
    [1689571500, 19624.55],
    [1689571560, 19630.3],
    [1689571620, 19629.4],
    [1689571680, 19630.45],
    [1689571740, 19625.7],
    [1689571800, 19624.95],
    [1689571860, 19622.05],
    [1689571920, 19619.9],
    [1689571980, 19625.2],
    [1689572040, 19625.5],
    [1689572100, 19626.1],
    [1689572160, 19623.65],
    [1689572220, 19623.6],
    [1689572280, 19624.15],
    [1689572340, 19623.75],
    [1689572400, 19624.2],
    [1689572460, 19623.0],
    [1689572520, 19622.95],
    [1689572580, 19623.45],
    [1689572640, 19620.15],
    [1689572700, 19618.4],
    [1689572760, 19615.75],
    [1689572820, 19611.15],
    [1689572880, 19610.25],
    [1689572940, 19607.9],
    [1689573000, 19599.6],
    [1689573060, 19605.05],
    [1689573120, 19606.35],
    [1689573180, 19606.3],
    [1689573240, 19603.65],
    [1689573300, 19605.4],
    [1689573360, 19614.25],
    [1689573420, 19615.75],
    [1689573480, 19620.6],
    [1689573540, 19625.0],
    [1689573600, 19626.35],
    [1689573660, 19621.85],
    [1689573720, 19619.25],
    [1689573780, 19616.6],
    [1689573840, 19615.8],
    [1689573900, 19613.4],
    [1689573960, 19613.65],
    [1689574020, 19616.0],
    [1689574080, 19615.05],
    [1689574140, 19615.5],
    [1689574200, 19612.95],
    [1689574260, 19612.5],
    [1689574320, 19617.55],
    [1689574380, 19616.25],
    [1689574440, 19617.4],
    [1689574500, 19615.9],
    [1689574560, 19614.6],
    [1689574620, 19613.9],
    [1689574680, 19615.15],
    [1689574740, 19615.65],
    [1689574800, 19615.75],
    [1689574860, 19623.8],
    [1689574920, 19627.35],
    [1689574980, 19625.25],
    [1689575040, 19613.9],
    [1689575100, 19610.5],
    [1689575160, 19612.2],
    [1689575220, 19614.4],
    [1689575280, 19616.6],
    [1689575340, 19617.15],
    [1689575400, 19617.4],
    [1689575460, 19617.1],
    [1689575520, 19618.95],
    [1689575580, 19620.3],
    [1689575640, 19619.5],
    [1689575700, 19622.0],
    [1689575760, 19623.35],
    [1689575820, 19624.25],
    [1689575880, 19623.8],
    [1689575940, 19627.2],
    [1689576000, 19624.2],
    [1689576060, 19626.5],
    [1689576120, 19629.8],
    [1689576180, 19630.8],
    [1689576240, 19628.95],
    [1689576300, 19633.5],
    [1689576360, 19635.55],
    [1689576420, 19637.1],
    [1689576480, 19635.1],
    [1689576540, 19634.5],
    [1689576600, 19634.4],
    [1689576660, 19630.45],
    [1689576720, 19634.65],
    [1689576780, 19632.85],
    [1689576840, 19634.0],
    [1689576900, 19634.25],
    [1689576960, 19635.85],
    [1689577020, 19637.1],
    [1689577080, 19636.4],
    [1689577140, 19629.15],
    [1689577200, 19646.3],
    [1689577260, 19647.8],
    [1689577320, 19640.8],
    [1689577380, 19645.65],
    [1689577440, 19641.1],
    [1689577500, 19635.4],
    [1689577560, 19636.5],
    [1689577620, 19632.1],
    [1689577680, 19632.2],
    [1689577740, 19625.35],
    [1689577800, 19622.75],
    [1689577860, 19626.1],
    [1689577920, 19629.6],
    [1689577980, 19628.75],
    [1689578040, 19624.85],
    [1689578100, 19628.6],
    [1689578160, 19625.3],
    [1689578220, 19626.4],
    [1689578280, 19634.0],
    [1689578340, 19642.65],
    [1689578400, 19648.1],
    [1689578460, 19651.3],
    [1689578520, 19651.8],
    [1689578580, 19648.45],
    [1689578640, 19641.05],
    [1689578700, 19633.35],
    [1689578760, 19635.85],
    [1689578820, 19640.0],
    [1689578880, 19644.7],
    [1689578940, 19639.85],
    [1689579000, 19645.05],
    [1689579060, 19643.6],
    [1689579120, 19638.15],
    [1689579180, 19634.45],
    [1689579240, 19637.75],
    [1689579300, 19643.25],
    [1689579360, 19641.45],
    [1689579420, 19641.2],
    [1689579480, 19641.9],
    [1689579540, 19643.6],
    [1689579600, 19648.1],
    [1689579660, 19646.4],
    [1689579720, 19645.1],
    [1689579780, 19643.25],
    [1689579840, 19646.9],
    [1689579900, 19639.55],
    [1689579960, 19645.2],
    [1689580020, 19657.2],
    [1689580080, 19659.3],
    [1689580140, 19653.1],
    [1689580200, 19647.7],
    [1689580260, 19646.0],
    [1689580320, 19647.95],
    [1689580380, 19655.7],
    [1689580440, 19660.5],
    [1689580500, 19654.0],
    [1689580560, 19654.3],
    [1689580620, 19653.05],
    [1689580680, 19644.95],
    [1689580740, 19648.1],
    [1689580800, 19645.8],
    [1689580860, 19651.85],
    [1689580920, 19651.9],
    [1689580980, 19645.4],
    [1689581040, 19640.1],
    [1689581100, 19643.1],
    [1689581160, 19645.45],
    [1689581220, 19644.6],
    [1689581280, 19643.8],
    [1689581340, 19649.35],
    [1689581400, 19649.6],
    [1689581460, 19656.35],
    [1689581520, 19659.9],
    [1689581580, 19662.5],
    [1689581640, 19661.1],
    [1689581700, 19658.35],
    [1689581760, 19660.25],
    [1689581820, 19660.7],
    [1689581880, 19662.9],
    [1689581940, 19664.2],
    [1689582000, 19667.85],
    [1689582060, 19666.6],
    [1689582120, 19668.7],
    [1689582180, 19669.45],
    [1689582240, 19669.65],
    [1689582300, 19663.95],
    [1689582360, 19655.15],
    [1689582420, 19651.1],
    [1689582480, 19655.5],
    [1689582540, 19661.55],
    [1689582600, 19668.1],
    [1689582660, 19670.15],
    [1689582720, 19665.35],
    [1689582780, 19667.15],
    [1689582840, 19668.15],
    [1689582900, 19669.65],
    [1689582960, 19667.65],
    [1689583020, 19667.2],
    [1689583080, 19666.6],
    [1689583140, 19661.45],
    [1689583200, 19656.9],
    [1689583260, 19653.65],
    [1689583320, 19654.25],
    [1689583380, 19655.75],
    [1689583440, 19648.3],
    [1689583500, 19658.45],
    [1689583560, 19657.85],
    [1689583620, 19657.8],
    [1689583680, 19655.7],
    [1689583740, 19662.15],
    [1689583800, 19668.6],
    [1689583860, 19669.45],
    [1689583920, 19669.05],
    [1689583980, 19661.4],
    [1689584040, 19663.7],
    [1689584100, 19662.35],
    [1689584160, 19662.35],
    [1689584220, 19662.3],
    [1689584280, 19658.9],
    [1689584340, 19658.1],
    [1689584400, 19659.9],
    [1689584460, 19658.7],
    [1689584520, 19654.95],
    [1689584580, 19657.15],
    [1689584640, 19658.65],
    [1689584700, 19667.2],
    [1689584760, 19668.05],
    [1689584820, 19662.75],
    [1689584880, 19668.85],
    [1689584940, 19670.35],
    [1689585000, 19666.8],
    [1689585060, 19671.35],
    [1689585120, 19669.65],
    [1689585180, 19668.15],
    [1689585240, 19671.7],
    [1689585300, 19668.35],
    [1689585360, 19658.9],
    [1689585420, 19657.75],
    [1689585480, 19657.85],
    [1689585540, 19668.7],
    [1689585600, 19673.0],
    [1689585660, 19677.85],
    [1689585720, 19680.75],
    [1689585780, 19679.35],
    [1689585840, 19680.1],
    [1689585900, 19679.0],
    [1689585960, 19672.3],
    [1689586020, 19671.25],
    [1689586080, 19677.05],
    [1689586140, 19672.85],
    [1689586200, 19682.95],
    [1689586260, 19682.35],
    [1689586320, 19689.5],
    [1689586380, 19681.9],
    [1689586440, 19689.05],
    [1689586500, 19695.55],
    [1689586560, 19697.75],
    [1689586620, 19704.9],
    [1689586680, 19702.1],
    [1689586740, 19705.5],
    [1689586800, 19713.2],
    [1689586860, 19718.7],
    [1689586920, 19709.9],
    [1689586980, 19721.65],
    [1689587040, 19730.15],
    [1689587100, 19723.0],
    [1689587160, 19725.2],
    [1689587220, 19728.6],
    [1689587280, 19724.05],
    [1689587340, 19722.2],
    [1689587400, 19717.9],
    [1689587460, 19724.5],
    [1689587520, 19716.35],
    [1689587580, 19724.3],
    [1689587640, 19725.65],
    [1689587700, 19723.85],
    [1689587760, 19718.65],
    [1689587820, 19718.7],
    [1689587880, 19720.05],
    [1689587940, 19719.1]
  ];
  final ValueNotifier<List<ChartData2>> _graph2 = ValueNotifier([]);
  final ValueNotifier<LineTouchResponse> _touchedSpot =
      ValueNotifier(const LineTouchResponse([]));

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < temp2.length; i++) {
      _graph2.value.add(ChartData2(
          DateTime.fromMillisecondsSinceEpoch(
            temp2[i][0] * 1000 as int,
            isUtc: false,
          ),
          temp2[i][1] as double));
    }
    var temp3 = _graph2.value;
    _graph2.value = [];
    _graph2.value = temp3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          SizedBox(
            width: 90.w,
            height: 35.h,
            child: ValueListenableBuilder(
              valueListenable: _graph2,
              builder: (BuildContext context, List<ChartData2> value,
                  Widget? child) {
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: AspectRatio(
                    aspectRatio: 1.25,
                    child: LineChart(
                      LineChartData(
                        extraLinesData: ExtraLinesData(
                            extraLinesOnTop: true,
                            horizontalLines: [
                              HorizontalLine(
                                y: value[value.length ~/ 2].y,
                                dashArray: [
                                  for (var i = 0; i < value.length; i++)
                                    1.w.toInt(),
                                ],
                                strokeCap: StrokeCap.round,
                                strokeWidth: 1,
                                color: Colors.white,
                                label: HorizontalLineLabel(
                                  show: false,
                                ),
                              ),
                            ]),
                        lineTouchData: LineTouchData(
                          touchCallback: (p0, p1) {},
                          getTouchedSpotIndicator: (barData, spotIndexes) {
                            return spotIndexes.map((int index) {
                              const flLine = FlLine(
                                  color: Colors.white,
                                  strokeWidth: 0.5,
                                  dashArray: [
                                    4,
                                  ]);

                              var dotData = FlDotData(
                                getDotPainter: (p0, p1, p2, p3) {
                                  return FlDotCirclePainter(
                                    color: Colors.green,
                                    strokeColor: Colors.white,
                                    radius: 2,
                                  );
                                },
                              );

                              return TouchedSpotIndicatorData(flLine, dotData);
                            }).toList();
                          },
                          touchTooltipData: LineTouchTooltipData(
                            showOnTopOfTheChartBoxArea: true,
                            maxContentWidth: 40.w,
                            fitInsideHorizontally: true,
                            fitInsideVertically: false,
                            tooltipBgColor: Colors.transparent,
                            tooltipPadding: EdgeInsets.zero,
                            tooltipBorder: const BorderSide(
                              color: Colors.transparent,
                            ),
                            getTooltipItems: (touchedSpots) {
                              return [
                                LineTooltipItem(
                                  " ${(touchedSpots.first.y).toStringAsFixed(2)}",
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 7.f,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ];
                            },
                          ),
                        ),
                        gridData: const FlGridData(
                          show: false,
                        ),
                        titlesData: const FlTitlesData(
                          show: false,
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            spots: [
                              for (var i = 0; i < value.length; i++)
                                FlSpot(i.toDouble(), value[i].y)
                            ],
                            isCurved: true,
                            color: Colors.green,
                            barWidth: .3.sp,
                            isStrokeCapRound: true,
                            dotData: const FlDotData(
                              show: false,
                            ),
                            belowBarData: BarAreaData(
                              show: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 90.w,
            height: 35.h,
            child: ValueListenableBuilder(
              valueListenable: _touchedSpot,
              builder: (BuildContext context, LineTouchResponse currentTouch,
                  Widget? child) {
                return ValueListenableBuilder(
                  valueListenable: _graph2,
                  builder: (BuildContext context, List<ChartData2> value,
                      Widget? child) {
                    /// Have to be updated at Future
                    double previousClosing = value[value.length ~/ 2].y;

                    var graphColor = _touchedSpot.value.lineBarSpots!.isEmpty
                        ? Colors.green
                        : _touchedSpot.value.lineBarSpots!.first.y <
                                previousClosing
                            ? Colors.red
                            : Colors.green;
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: AspectRatio(
                        aspectRatio: 1.25,
                        child: LineChart(
                          LineChartData(
                            extraLinesData: ExtraLinesData(
                                extraLinesOnTop: true,
                                horizontalLines: [
                                  HorizontalLine(
                                    y: previousClosing,
                                    dashArray: [
                                      for (var i = 0; i < value.length; i++)
                                        1.w.toInt(),
                                    ],
                                    strokeCap: StrokeCap.round,
                                    strokeWidth: 1,
                                    color: Colors.white,
                                    label: HorizontalLineLabel(
                                      show: false,
                                    ),
                                  ),
                                ]),
                            lineTouchData: LineTouchData(
                              touchCallback:
                                  (FlTouchEvent event, LineTouchResponse? p1) {
                                if (p1 != null) {
                                  var linebars = p1.lineBarSpots ?? [];
                                  if (linebars.isNotEmpty) {
                                    _touchedSpot.value = p1;
                                  }
                                }
                              },
                              getTouchedSpotIndicator: (barData, spotIndexes) {
                                return spotIndexes.map((int index) {
                                  const flLine = FlLine(
                                      color: Colors.white,
                                      strokeWidth: 0.5,
                                      dashArray: [
                                        4,
                                      ]);

                                  var dotData = FlDotData(
                                    getDotPainter: (p0, p1, p2, p3) {
                                      return FlDotCirclePainter(
                                        color: Colors.green,
                                        strokeColor: Colors.white,
                                        radius: 2,
                                      );
                                    },
                                  );

                                  return TouchedSpotIndicatorData(
                                      flLine, dotData);
                                }).toList();
                              },
                              touchTooltipData: LineTouchTooltipData(
                                showOnTopOfTheChartBoxArea: true,
                                maxContentWidth: 40.w,
                                fitInsideHorizontally: true,
                                fitInsideVertically: false,
                                tooltipBgColor: Colors.transparent,
                                tooltipPadding: EdgeInsets.zero,
                                tooltipBorder: const BorderSide(
                                  color: Colors.transparent,
                                ),
                                getTooltipItems: (spot) {
                                  return [
                                    LineTooltipItem(
                                      " ${(spot.first.y).toStringAsFixed(2)}",
                                      TextStyle(
                                        color: Colors.white,
                                        fontSize: 7.f,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ];
                                },
                              ),
                            ),
                            gridData: const FlGridData(
                              show: false,
                            ),
                            titlesData: const FlTitlesData(
                              show: false,
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  for (var i = 0; i < value.length; i++)
                                    FlSpot(i.toDouble(), value[i].y)
                                ],
                                isCurved: true,
                                color: graphColor,
                                barWidth: .3.sp,
                                isStrokeCapRound: true,
                                dotData: const FlDotData(
                                  show: false,
                                ),
                                belowBarData: BarAreaData(
                                  show: true,
                                  spotsLine: BarAreaSpotsLine(
                                    show: true,
                                    flLineStyle: FlLine(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                    ),
                                    checkToShowSpotLine: (spot) {
                                      if (_touchedSpot
                                          .value.lineBarSpots!.isNotEmpty) {
                                        return false;
                                      } else {
                                        return _touchedSpot
                                                .value.lineBarSpots!.first.x <
                                            spot.x;
                                      }
                                    },
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      graphColor,
                                      graphColor,
                                      Colors.transparent,
                                    ],
                                    end: Alignment.bottomCenter,
                                    begin: Alignment.topCenter,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

getTimeFormat(DateTime time) {
  return DateFormat('hh:mm a').format(time);
}

class ChartData2 {
  ChartData2(this.x, this.y);
  final DateTime x;
  final double y;
}
