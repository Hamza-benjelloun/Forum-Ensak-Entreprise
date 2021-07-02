/* globals Chart:false, feather:false */

(function() {
    'use strict'

    feather.replace()

    // Graphs
    var ctx = document.getElementById('myChart')
        // eslint-disable-next-line no-unused-vars
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: [
                'Sunday',
                'Monday',
                'Tuesday',
                'Wednesday',
                'Thursday',
                'Friday',
                'Saturday'
            ],
            datasets: [{
                data: [
                    1,
                    3,
                    5,
                    9,
                    10,
                    12,
                    20
                ],
                lineTension: 0,
                backgroundColor: 'transparent',
                borderColor: 'rgb(196, 5, 5)',
                borderWidth: 4,
                pointBackgroundColor: 'rgb(196, 5, 5)'
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: false
                    }
                }]
            },
            legend: {
                display: false
            }
        }
    })
})()