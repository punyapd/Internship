const level1 = [
  {
    blocks: [
      new Block(100, 0, 100, 200, false, "#f05705", "ver"),
      new Block(400, 100, 100, 200, false, "#f05705", "ver"),
      new Block(0, 200, 200, 100, true, "red", "hor"),
      new Block(200, 200, 100, 200, false, "#f05705", "ver"),
      new Block(0, 400, 100, 200, false, "#f05705", "ver"),
      new Block(300, 400, 300, 100, false, "#f05705", "hor"),
    ],

    goalX: 400,
    goalY: 200,
  },
];

const level1Pos = [
  { x: 100, y: 0 },
  { x: 400, y: 100 },
  { x: 0, y: 200 },
  { x: 200, y: 200 },
  { x: 0, y: 400 },
  { x: 300, y: 400 },
];

const level2 = [
  {
    blocks: [
      new Block(0, 0, 100, 200, false, "#f05705", "ver"),
      new Block(100, 100, 100, 300, false, "#f05705", "ver"),
      new Block(0, 200, 100, 200, true, "red", "ver"),
      new Block(300, 0, 300, 100, false, "#f05705", "hor"),
      new Block(0, 200, 100, 200, false, "#f05705", "ver"),
      new Block(200, 200, 200, 100, true, "red", "hor"),
      new Block(400, 200, 100, 200, false, "#f05705", "ver"),
      new Block(500, 200, 100, 200, false, "#f05705", "ver"),
      new Block(0, 500, 200, 100, false, "#f05705", "hor"),
      new Block(200, 500, 200, 100, false, "#f05705", "hor"),
      new Block(400, 400, 100, 200, false, "#f05705", "ver"),
    ],

    goalX: 400,
    goalY: 200,
  },
];

const level2Pos = [
  { x: 0, y: 0 },
  { x: 100, y: 100 },
  { x: 0, y: 200 },
  { x: 300, y: 0 },
  { x: 0, y: 200 },

  { x: 200, y: 200 },
  { x: 400, y: 200 },
  { x: 500, y: 200 },
  { x: 0, y: 500 },
  { x: 200, y: 500 },
  { x: 400, y: 400 },
];

const level3 = [
  {
    blocks: [
      new Block(0, 0, 300, 100, false, "#f05705", "hor"),
      new Block(400, 0, 100, 200, false, "#f05705", "ver"),
      new Block(200, 100, 100, 200, false, "#f05705", "ver"),
      new Block(0, 200, 200, 100, true, "red", "hor"),
      new Block(300, 200, 100, 200, false, "#f05705", "ver"),
      new Block(0, 300, 100, 200, false, "#f05705", "ver"),
      new Block(100, 300, 100, 200, false, "#f05705", "ver"),
      new Block(200, 300, 100, 200, false, "#f05705", "ver"),

      new Block(400, 300, 200, 100, false, "#f05705", "hor"),
      new Block(300, 400, 200, 100, false, "#f05705", "hor"),
      new Block(500, 400, 100, 200, false, "#f05705", "ver"),
    ],

    goalX: 400,
    goalY: 200,
  },
];

const level3Pos = [
    { x: 0, y: 0 },
    { x: 400, y: 0 },
    { x: 200, y: 100 },
    { x: 0, y: 200 },
    { x: 300, y: 200 },
  
    { x: 0, y: 300 },
    { x: 100, y: 300 },
    { x: 200, y: 300 },
    { x: 400, y: 300 },
    { x: 300, y: 400 },
    { x: 500, y: 400 },
  ];

const level4 = [
  {
    blocks: [
      new Block(0, 0, 200, 100, false, "#f05705", "hor"),
      new Block(200, 0, 100, 300, false, "#f05705", "ver"),
      new Block(300, 100, 200, 100, false, "#f05705", "hor"),
      new Block(500, 0, 100, 200, false, "#f05705", "ver"),
      new Block(0, 200, 200, 100, true, "red", "hor"),
      new Block(500, 200, 100, 200, false, "#f05705", "ver"),
      new Block(300, 300, 100, 300, false, "#f05705", "ver"),
      new Block(400, 300, 100, 200, false, "#f05705", "ver"),
      new Block(0, 400, 100, 200, false, "#f05705", "ver"),
      new Block(100, 400, 200, 100, false, "#f05705", "hor"),
      new Block(400, 500, 200, 100, false, "#f05705", "hor"),
    ],

    goalX: 400,
    goalY: 200,
  },
];

const level4Pos = [
    { x: 0, y: 0 },
    { x: 200, y: 0 },
    { x: 300, y: 100 },
    { x: 500, y: 0 },
    { x: 0, y: 200 },
  
    { x: 500, y: 200 },
    { x: 300, y: 300 },
    { x: 400, y: 300 },
    { x: 0, y: 400 },
    { x: 100, y: 400 },
    { x: 400, y: 500 },
  ];

const level5 = [
  {
    blocks: [
      new Block(100, 0, 200, 100, false, "#f05705", "hor"),
      new Block(400, 0, 100, 300, false, "#f05705", "ver"),
      new Block(100, 100, 300, 100, false, "#f05705", "hor"),
      new Block(500, 100, 100, 200, false, "#f05705", "ver"),
      new Block(0, 200, 200, 100, true, "red", "hor"),
      new Block(200, 200, 100, 200, false, "#f05705", "ver"),
      new Block(300, 200, 100, 300, false, "#f05705", "ver"),
      new Block(400, 300, 200, 100, false, "#f05705", "hor"),
      new Block(0, 400, 300, 100, false, "#f05705", "hor"),
      new Block(500, 400, 100, 200, false, "#f05705", "ver"),
    ],

    goalX: 400,
    goalY: 200,
  },
];

const level5Pos = [
    { x: 100, y: 0 },
    { x: 400, y: 0 },
    { x: 100, y: 100 },
    { x: 500, y: 100 },
    { x: 0, y: 200 },
  
    { x: 200, y: 200 },
    { x: 300, y: 200 },
    { x: 400, y: 300 },
    { x: 0, y: 400 },
    { x: 500, y: 400 },
  ];

const level6 = [
  {
    blocks: [
      new Block(0, 0, 100, 200, false, "#f05705", "ver"),
      new Block(100, 0, 200, 100, false, "#f05705", "hor"),
      new Block(200, 100, 200, 100, false, "#f05705", "hor"),
      new Block(400, 100, 100, 200, false, "#f05705", "ver"),
      new Block(0, 200, 200, 100, true, "red", "hor"),
      new Block(200, 200, 100, 200, false, "#f05705", "ver"),
      new Block(500, 200, 100, 300, false, "#f05705", "ver"),
      new Block(0, 300, 200, 100, false, "#f05705", "hor"),
      new Block(300, 300, 100, 200, false, "#f05705", "ver"),
      new Block(400, 300, 100, 200, false, "#f05705", "ver"),
      new Block(0, 400, 300, 100, false, "#f05705", "hor"),
      new Block(0, 500, 300, 100, false, "#f05705", "hor"),
    ],

    goalX: 400,
    goalY: 200,
  },
];


const level6Pos = [
    { x: 0, y: 0 },
    { x: 100, y: 0 },
    { x: 200, y: 100 },
    { x: 400, y: 100 },
    { x: 0, y: 200 },
  
    { x: 200, y: 200 },
    { x: 500, y: 200 },
    { x: 0, y: 300 },
    { x: 300, y: 300 },
    { x: 400, y: 300 },
    { x: 0, y: 400 },
    { x: 0, y: 500 },


  ];
const level7 = [
  {
    blocks: [
      new Block(300, 0, 100, 200, false, "#f05705", "ver"),
      new Block(400, 0, 200, 100, false, "#f05705", "hor"),
      new Block(0, 100, 100, 300, false, "#f05705", "ver"),
      new Block(100, 100, 100, 300, false, "#f05705", "ver"),
      new Block(400, 100, 100, 300, false, "#f05705", "ver"),
      new Block(200, 200, 200, 100, true, "red", "hor"),
      new Block(200, 300, 200, 100, false, "#f05705", "hor"),
      new Block(200, 400, 100, 200, false, "#f05705", "ver"),
      new Block(300, 400, 200, 100, false, "#f05705", "hor"),
      new Block(0, 500, 200, 100, false, "#f05705", "hor"),
    ],

    goalX: 400,
    goalY: 200,
  },
];

const level7Pos = [
    { x: 300, y: 0 },
    { x: 400, y: 0 },
    { x: 0, y: 100 },
    { x: 100, y: 100 },
    { x: 400, y: 100 },
  
    { x: 200, y: 200 },
    { x: 200, y: 300 },
    { x: 200, y: 400 },
    { x: 300, y: 400 },
    { x: 0, y: 500 },
   


  ];


const level8 = [
  {
    blocks: [
      new Block(200, 0, 300, 100, false, "#f05705", "hor"),
      new Block(300, 100, 200, 100, false, "#f05705", "hor"),
      new Block(500, 100, 100, 200, false, "#f05705", "ver"),
      new Block(0, 200, 200, 100, false, "#f05705", "hor"),
      new Block(200, 200, 100, 200, false, "#f05705", "ver"),
      new Block(300, 200, 100, 200, false, "#f05705", "ver"),
      new Block(0, 300, 100, 200, false, "#f05705", "ver"),
      new Block(100, 300, 100, 300, false, "#f05705", "ver"),
      new Block(400, 300, 200, 100, true, "red", "hor"),
      new Block(200, 500, 200, 100, false, "#f05705", "hor"),
      new Block(400, 500, 200, 100, false, "#f05705", "hor"),
      new Block(0, 500, 100, 100, false, "gray", ""),
      new Block(300, 400, 100, 100, false, "gray", ""),
      new Block(400, 400, 100, 100, false, "gray", ""),
    ],

    goalX: 0,
    goalY: 300,
  },
];

const level8Pos = [
    { x: 200, y: 0 },
    { x: 300, y: 100 },
    { x: 500, y: 100 },
    { x: 0, y: 200 },
    { x: 200, y: 200 },
  
    { x: 300, y: 200 },
    { x: 0, y: 300 },
    { x: 100, y: 300 },
    { x: 400, y: 300 },
    { x: 200, y: 500 },
    { x: 400, y: 500 },
    { x: 0, y: 500 },
    { x: 300, y: 400 },
    { x: 400, y: 400 },



  ];

const level9 = [
  {
    blocks: [
      new Block(0, 0, 200, 100, false, "#f05705", "hor"),
      new Block(200, 0, 100, 200, false, "#f05705", "ver"),
      new Block(400, 0, 200, 100, false, "#f05705", "hor"),
      new Block(0, 100, 200, 100, false, "#f05705", "hor"),
      new Block(200, 200, 300, 100, false, "#f05705", "hor"),
      new Block(500, 200, 100, 300, false, "#f05705", "ver"),
      new Block(0, 300, 100, 300, false, "#f05705", "ver"),

      new Block(200, 300, 200, 100, true, "red", "hor"),
      new Block(200, 400, 200, 100, false, "#f05705", "hor"),
      new Block(100, 500, 200, 100, false, "#f05705", "hor"),
      new Block(300, 500, 300, 100, false, "#f05705", "hor"),
      new Block(300, 0, 100, 100, false, "gray", ""),
      new Block(300, 100, 100, 100, false, "gray", ""),
      new Block(100, 200, 100, 100, false, "gray", ""),
    ],

    goalX: 0,
    goalY: 300,
  },
];

const level9Pos = [
    { x: 0, y: 0 },
    { x: 200, y: 0 },
    { x: 400, y: 0 },
    { x: 0, y: 100 },
    { x: 200, y: 200 },
  
    { x: 500, y: 200 },
    { x: 0, y: 300 },
    { x: 200, y: 300 },
    { x: 200, y: 400 },
    { x: 100, y: 500 },
    { x: 300, y: 500 },
    { x: 300, y: 0 },
    { x: 300, y: 100 },
    { x: 100, y: 200 },



  ];

const level10 = [
  {
    blocks: [
      new Block(300, 0, 100, 200, false, "#f05705", "ver"),
      new Block(400, 0, 200, 100, false, "#f05705", "hor"),
      new Block(0, 200, 200, 100, true, "red", "hor"),
      new Block(200, 100, 100, 200, false, "#f05705", "ver"),
      new Block(300, 200, 100, 200, false, "#f05705", "ver"),
      new Block(400, 200, 100, 300, false, "#f05705", "ver"),
      new Block(500, 100, 100, 200, false, "#f05705", "ver"),
      new Block(0, 300, 200, 100, false, "#f05705", "hor"),
      new Block(500, 300, 100, 200, false, "#f05705", "ver"),
      new Block(0, 400, 100, 200, false, "#f05705", "ver"),
      new Block(100, 400, 300, 100, false, "#f05705", "hor"),
    ],

    goalX: 400,
    goalY: 200,
  },
];

const level10Pos = [
    { x: 300, y: 0 },
    { x: 400, y: 0 },
    { x: 0, y: 200 },
    { x: 200, y: 100 },
    { x: 300, y: 200 },
  
    { x: 400, y: 200 },
    { x: 500, y: 100 },
    { x: 0, y: 300 },
    { x: 500, y: 300 },
    { x: 0, y: 400 },
    { x: 100, y: 400 },



  ];
const levels = [
  level1,
  level2,
  level3,
  level4,
  level5,
  level6,
  level7,
  level8,
  level9,
  level10,
];

const initialPositions = [
  level1Pos,
  level2Pos,
  level3Pos,
  level4Pos,
  level5Pos,
  level6Pos,
  level7Pos,
  level8Pos,
  level9Pos,
  level10Pos,
];
