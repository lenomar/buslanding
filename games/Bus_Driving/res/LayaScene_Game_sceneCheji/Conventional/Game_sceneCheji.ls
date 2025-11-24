{
    "version": "LAYASCENE3D:02",
    "data": {
        "type": "Scene3D",
        "props": {
            "name": "Game_sceneCheji",
            "sky": {
                "material": {
                    "type": "Laya.SkyProceduralMaterial",
                    "path": "Assets/Art/Models/Sky/Materials/sky_2.lmat"
                },
                "mesh": "SkyDome"
            },
            "ambientColor": [
                0.6320754,
                0.6320754,
                0.6320754
            ],
            "reflectionDecodingFormat": 0,
            "reflection": "Assets/CheJiDaShi/Scenes/Game_sceneChejiGIReflection.ltcb",
            "reflectionIntensity": 1,
            "ambientMode": 0,
            "ambientSphericalHarmonicsIntensity": 1,
            "lightmaps": [],
            "enableFog": false,
            "fogStart": 0,
            "fogRange": 300,
            "fogColor": [
                0.5,
                0.5,
                0.5
            ]
        },
        "child": [
            {
                "type": "DirectionLight",
                "instanceID": 0,
                "props": {
                    "name": "Directional Light",
                    "active": true,
                    "isStatic": false,
                    "layer": 0,
                    "position": [
                        0,
                        8.749,
                        0
                    ],
                    "rotation": [
                        0.3815352,
                        0.389789,
                        0.1817616,
                        -0.8182043
                    ],
                    "scale": [
                        1,
                        1,
                        1
                    ],
                    "intensity": 0.8,
                    "lightmapBakedType": 0,
                    "color": [
                        1,
                        1,
                        1
                    ]
                },
                "components": [],
                "child": []
            },
            {
                "type": "Camera",
                "instanceID": 1,
                "props": {
                    "name": "Camera",
                    "active": true,
                    "isStatic": false,
                    "layer": 0,
                    "position": [
                        0.0000648737,
                        1.747213,
                        -3.150871
                    ],
                    "rotation": [
                        -0.000002578483,
                        0.9681277,
                        0.2504572,
                        0.000009966548
                    ],
                    "scale": [
                        0.6000003,
                        0.6000001,
                        0.6000003
                    ],
                    "clearFlag": 1,
                    "orthographic": false,
                    "orthographicVerticalSize": 10,
                    "fieldOfView": 60,
                    "enableHDR": true,
                    "nearPlane": 0.3,
                    "farPlane": 1500,
                    "viewport": [
                        0,
                        0,
                        1,
                        1
                    ],
                    "clearColor": [
                        0.1921569,
                        0.3019608,
                        0.4745098,
                        0
                    ]
                },
                "components": [],
                "child": []
            },
            {
                "type": "MeshSprite3D",
                "instanceID": 2,
                "props": {
                    "name": "game_mountain",
                    "active": true,
                    "isStatic": false,
                    "layer": 0,
                    "position": [
                        0,
                        -89.5,
                        0
                    ],
                    "rotation": [
                        -1.486283e-8,
                        0.7331718,
                        -1.602398e-8,
                        -0.6800436
                    ],
                    "scale": [
                        50,
                        50,
                        50
                    ],
                    "meshPath": "Assets/CheJiDaShi/Alt/Models/Road/game_mountain-game_mountain.lm",
                    "enableRender": true,
                    "materials": [
                        {
                            "path": "Assets/CheJiDaShi/Alt/Models/Road/Materials/SimpleTownes.lmat"
                        }
                    ]
                },
                "components": [],
                "child": []
            },
            {
                "type": "MeshSprite3D",
                "instanceID": 3,
                "props": {
                    "name": "dimian",
                    "active": true,
                    "isStatic": false,
                    "layer": 0,
                    "position": [
                        0,
                        -89.45,
                        0
                    ],
                    "rotation": [
                        -2.185569e-8,
                        0,
                        0,
                        -1
                    ],
                    "scale": [
                        140.3701,
                        140.3701,
                        140.3701
                    ],
                    "meshPath": "Assets/CheJiDaShi/Alt/Models/Road/dimian-dimian.lm",
                    "enableRender": true,
                    "materials": [
                        {
                            "path": "Assets/CheJiDaShi/Alt/Models/Road/Materials/dimian3.lmat"
                        }
                    ]
                },
                "components": [],
                "child": []
            },
            {
                "type": "MeshSprite3D",
                "instanceID": 4,
                "props": {
                    "name": "sky_2",
                    "active": true,
                    "isStatic": false,
                    "layer": 0,
                    "position": [
                        0,
                        -89.5,
                        0
                    ],
                    "rotation": [
                        -2.185569e-8,
                        0,
                        0,
                        -1
                    ],
                    "scale": [
                        1761.657,
                        6209.841,
                        1761.657
                    ],
                    "meshPath": "Assets/CheJiDaShi/Alt/Models/Sky/sky_2-sky_2.lm",
                    "enableRender": true,
                    "materials": [
                        {
                            "path": "Assets/CheJiDaShi/Alt/Models/Sky/Materials/game_sky.lmat"
                        }
                    ]
                },
                "components": [],
                "child": []
            },
            {
                "type": "Sprite3D",
                "instanceID": 5,
                "props": {
                    "name": "ribbon",
                    "active": true,
                    "isStatic": false,
                    "layer": 0,
                    "position": [
                        0,
                        0,
                        10000
                    ],
                    "rotation": [
                        0,
                        0,
                        0,
                        -1
                    ],
                    "scale": [
                        1,
                        1,
                        1
                    ]
                },
                "components": [],
                "child": [
                    {
                        "type": "ShuriKenParticle3D",
                        "instanceID": 6,
                        "props": {
                            "name": "ribbon",
                            "active": true,
                            "isStatic": false,
                            "layer": 0,
                            "position": [
                                -0.136,
                                0,
                                0
                            ],
                            "rotation": [
                                0.7071068,
                                0,
                                0,
                                -0.7071068
                            ],
                            "scale": [
                                1.6,
                                1.600003,
                                1.600003
                            ],
                            "main": {
                                "randomSeed": 2251323000,
                                "bases": {
                                    "isPerformanceMode": true,
                                    "looping": false,
                                    "startLifetimeType": 2,
                                    "startLifetimeConstant": 3,
                                    "startLifetimeConstantMin": 0.65,
                                    "startLifetimeConstantMax": 3,
                                    "startSpeedType": 2,
                                    "startSpeedConstant": 7.25,
                                    "startSpeedConstantMin": 0.15,
                                    "startSpeedConstantMax": 7.25,
                                    "startSizeType": 2,
                                    "startSizeConstant": 0.15,
                                    "startSizeConstantMin": 0.08,
                                    "startSizeConstantMax": 0.15,
                                    "startRotationType": 2,
                                    "startRotationConstant": 6.283185,
                                    "startRotationConstantMax": 6.283185,
                                    "gravityModifier": 1,
                                    "scaleMode": 0,
                                    "maxParticles": 500
                                },
                                "vector3s": {
                                    "startSizeConstantSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMinSeparate": [
                                        0.08,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMaxSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startRotationConstantSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ],
                                    "startRotationConstantMaxSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ]
                                }
                            },
                            "emission": {
                                "bases": {
                                    "enable": true,
                                    "emissionRate": 0
                                },
                                "bursts": [
                                    {
                                        "time": 0,
                                        "min": 0,
                                        "max": 125
                                    }
                                ]
                            },
                            "shape": {
                                "shapeType": 2,
                                "bases": {
                                    "enable": true,
                                    "radius": 0.2,
                                    "angle": 0.4084071,
                                    "emitType": 0
                                }
                            },
                            "sizeOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "size": {
                                    "type": 0,
                                    "gradient": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientX": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientXMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    }
                                }
                            },
                            "rotationOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "angularVelocity": {
                                    "type": 2,
                                    "constant": 0.7853981,
                                    "constantMax": 0.7853981,
                                    "constantSeparate": [
                                        1,
                                        -1,
                                        -0.7853981
                                    ],
                                    "constantMaxSeparate": [
                                        1,
                                        1,
                                        0.7853981
                                    ]
                                }
                            },
                            "textureSheetAnimation": {
                                "bases": {
                                    "enable": true,
                                    "enableUVChannelsTip": "UV0"
                                },
                                "vector2s": {
                                    "tiles": [
                                        3,
                                        3
                                    ]
                                },
                                "frame": {
                                    "type": 2,
                                    "constant": 8.9991,
                                    "constantMax": 8.9991
                                },
                                "startFrame": {
                                    "type": 0
                                }
                            },
                            "renderer": {
                                "resources": {
                                    "material": "Assets/CheJiDaShi/Alt/effect/Materials/confetti.lmat"
                                }
                            }
                        },
                        "components": [],
                        "child": []
                    },
                    {
                        "type": "ShuriKenParticle3D",
                        "instanceID": 7,
                        "props": {
                            "name": "ribbon (2)",
                            "active": true,
                            "isStatic": false,
                            "layer": 0,
                            "position": [
                                0.04999998,
                                0,
                                -0.469
                            ],
                            "rotation": [
                                0.7071068,
                                0,
                                0,
                                -0.7071068
                            ],
                            "scale": [
                                1.6,
                                1.600003,
                                1.600003
                            ],
                            "main": {
                                "randomSeed": 4080183000,
                                "bases": {
                                    "isPerformanceMode": true,
                                    "looping": false,
                                    "startLifetimeType": 2,
                                    "startLifetimeConstant": 3,
                                    "startLifetimeConstantMin": 0.65,
                                    "startLifetimeConstantMax": 3,
                                    "startSpeedType": 2,
                                    "startSpeedConstant": 10,
                                    "startSpeedConstantMin": 0.15,
                                    "startSpeedConstantMax": 10,
                                    "startSizeType": 2,
                                    "startSizeConstant": 0.15,
                                    "startSizeConstantMin": 0.08,
                                    "startSizeConstantMax": 0.15,
                                    "startRotationType": 2,
                                    "startRotationConstant": 6.283185,
                                    "startRotationConstantMax": 6.283185,
                                    "gravityModifier": 1,
                                    "scaleMode": 0,
                                    "maxParticles": 500
                                },
                                "vector3s": {
                                    "startSizeConstantSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMinSeparate": [
                                        0.08,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMaxSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startRotationConstantSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ],
                                    "startRotationConstantMaxSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ]
                                }
                            },
                            "emission": {
                                "bases": {
                                    "enable": true,
                                    "emissionRate": 0
                                },
                                "bursts": [
                                    {
                                        "time": 0,
                                        "min": 0,
                                        "max": 125
                                    }
                                ]
                            },
                            "shape": {
                                "shapeType": 2,
                                "bases": {
                                    "enable": true,
                                    "radius": 0.2,
                                    "angle": 0.4084071,
                                    "emitType": 0
                                }
                            },
                            "sizeOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "size": {
                                    "type": 0,
                                    "gradient": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientX": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientXMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    }
                                }
                            },
                            "rotationOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "angularVelocity": {
                                    "type": 2,
                                    "constant": 0.7853981,
                                    "constantMax": 0.7853981,
                                    "constantSeparate": [
                                        1,
                                        -1,
                                        -0.7853981
                                    ],
                                    "constantMaxSeparate": [
                                        1,
                                        1,
                                        0.7853981
                                    ]
                                }
                            },
                            "textureSheetAnimation": {
                                "bases": {
                                    "enable": true,
                                    "enableUVChannelsTip": "UV0"
                                },
                                "vector2s": {
                                    "tiles": [
                                        3,
                                        3
                                    ]
                                },
                                "frame": {
                                    "type": 2,
                                    "constant": 8.9991,
                                    "constantMax": 8.9991
                                },
                                "startFrame": {
                                    "type": 0
                                }
                            },
                            "renderer": {
                                "resources": {
                                    "material": "Assets/CheJiDaShi/Alt/effect/Materials/confetti.lmat"
                                }
                            }
                        },
                        "components": [],
                        "child": []
                    },
                    {
                        "type": "ShuriKenParticle3D",
                        "instanceID": 8,
                        "props": {
                            "name": "ribbon (3)",
                            "active": true,
                            "isStatic": false,
                            "layer": 0,
                            "position": [
                                -0.335,
                                0,
                                0.5170001
                            ],
                            "rotation": [
                                0.7071068,
                                0,
                                0,
                                -0.7071068
                            ],
                            "scale": [
                                1.6,
                                1.600003,
                                1.600003
                            ],
                            "main": {
                                "randomSeed": 3486096000,
                                "bases": {
                                    "isPerformanceMode": true,
                                    "looping": false,
                                    "startLifetimeType": 2,
                                    "startLifetimeConstant": 3,
                                    "startLifetimeConstantMin": 0.65,
                                    "startLifetimeConstantMax": 3,
                                    "startSpeedType": 2,
                                    "startSpeedConstant": 10,
                                    "startSpeedConstantMin": 0.15,
                                    "startSpeedConstantMax": 10,
                                    "startSizeType": 2,
                                    "startSizeConstant": 0.15,
                                    "startSizeConstantMin": 0.08,
                                    "startSizeConstantMax": 0.15,
                                    "startRotationType": 2,
                                    "startRotationConstant": 6.283185,
                                    "startRotationConstantMax": 6.283185,
                                    "gravityModifier": 1,
                                    "scaleMode": 0,
                                    "maxParticles": 500
                                },
                                "vector3s": {
                                    "startSizeConstantSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMinSeparate": [
                                        0.08,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMaxSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startRotationConstantSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ],
                                    "startRotationConstantMaxSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ]
                                }
                            },
                            "emission": {
                                "bases": {
                                    "enable": true,
                                    "emissionRate": 0
                                },
                                "bursts": [
                                    {
                                        "time": 0,
                                        "min": 0,
                                        "max": 125
                                    }
                                ]
                            },
                            "shape": {
                                "shapeType": 2,
                                "bases": {
                                    "enable": true,
                                    "radius": 0.2,
                                    "angle": 0.4084071,
                                    "emitType": 0
                                }
                            },
                            "sizeOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "size": {
                                    "type": 0,
                                    "gradient": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientX": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientXMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    }
                                }
                            },
                            "rotationOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "angularVelocity": {
                                    "type": 2,
                                    "constant": 0.7853981,
                                    "constantMax": 0.7853981,
                                    "constantSeparate": [
                                        1,
                                        -1,
                                        -0.7853981
                                    ],
                                    "constantMaxSeparate": [
                                        1,
                                        1,
                                        0.7853981
                                    ]
                                }
                            },
                            "textureSheetAnimation": {
                                "bases": {
                                    "enable": true,
                                    "enableUVChannelsTip": "UV0"
                                },
                                "vector2s": {
                                    "tiles": [
                                        3,
                                        3
                                    ]
                                },
                                "frame": {
                                    "type": 2,
                                    "constant": 8.9991,
                                    "constantMax": 8.9991
                                },
                                "startFrame": {
                                    "type": 0
                                }
                            },
                            "renderer": {
                                "resources": {
                                    "material": "Assets/CheJiDaShi/Alt/effect/Materials/confetti.lmat"
                                }
                            }
                        },
                        "components": [],
                        "child": []
                    },
                    {
                        "type": "ShuriKenParticle3D",
                        "instanceID": 9,
                        "props": {
                            "name": "ribbon (4)",
                            "active": true,
                            "isStatic": false,
                            "layer": 0,
                            "position": [
                                0.05,
                                0,
                                0.517
                            ],
                            "rotation": [
                                0.7071068,
                                0,
                                0,
                                -0.7071068
                            ],
                            "scale": [
                                1.6,
                                1.600003,
                                1.600003
                            ],
                            "main": {
                                "randomSeed": 3208627000,
                                "bases": {
                                    "isPerformanceMode": true,
                                    "looping": false,
                                    "startLifetimeType": 2,
                                    "startLifetimeConstant": 3,
                                    "startLifetimeConstantMin": 0.65,
                                    "startLifetimeConstantMax": 3,
                                    "startSpeedType": 2,
                                    "startSpeedConstant": 10,
                                    "startSpeedConstantMin": 0.15,
                                    "startSpeedConstantMax": 10,
                                    "startSizeType": 2,
                                    "startSizeConstant": 0.15,
                                    "startSizeConstantMin": 0.08,
                                    "startSizeConstantMax": 0.15,
                                    "startRotationType": 2,
                                    "startRotationConstant": 6.283185,
                                    "startRotationConstantMax": 6.283185,
                                    "gravityModifier": 1,
                                    "scaleMode": 0,
                                    "maxParticles": 500
                                },
                                "vector3s": {
                                    "startSizeConstantSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMinSeparate": [
                                        0.08,
                                        1,
                                        1
                                    ],
                                    "startSizeConstantMaxSeparate": [
                                        0.15,
                                        1,
                                        1
                                    ],
                                    "startRotationConstantSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ],
                                    "startRotationConstantMaxSeparate": [
                                        1,
                                        -1,
                                        -6.283185
                                    ]
                                }
                            },
                            "emission": {
                                "bases": {
                                    "enable": true,
                                    "emissionRate": 0
                                },
                                "bursts": [
                                    {
                                        "time": 0,
                                        "min": 0,
                                        "max": 125
                                    }
                                ]
                            },
                            "shape": {
                                "shapeType": 2,
                                "bases": {
                                    "enable": true,
                                    "radius": 0.2,
                                    "angle": 0.4084071,
                                    "emitType": 0
                                }
                            },
                            "sizeOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "size": {
                                    "type": 0,
                                    "gradient": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientX": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    },
                                    "gradientXMax": {
                                        "sizes": [
                                            {
                                                "key": 0,
                                                "value": 0.6757813
                                            },
                                            {
                                                "key": 1,
                                                "value": 0.6914063
                                            }
                                        ]
                                    }
                                }
                            },
                            "rotationOverLifetime": {
                                "bases": {
                                    "enable": true
                                },
                                "angularVelocity": {
                                    "type": 2,
                                    "constant": 0.7853981,
                                    "constantMax": 0.7853981,
                                    "constantSeparate": [
                                        1,
                                        -1,
                                        -0.7853981
                                    ],
                                    "constantMaxSeparate": [
                                        1,
                                        1,
                                        0.7853981
                                    ]
                                }
                            },
                            "textureSheetAnimation": {
                                "bases": {
                                    "enable": true,
                                    "enableUVChannelsTip": "UV0"
                                },
                                "vector2s": {
                                    "tiles": [
                                        3,
                                        3
                                    ]
                                },
                                "frame": {
                                    "type": 2,
                                    "constant": 8.9991,
                                    "constantMax": 8.9991
                                },
                                "startFrame": {
                                    "type": 0
                                }
                            },
                            "renderer": {
                                "resources": {
                                    "material": "Assets/CheJiDaShi/Alt/effect/Materials/confetti.lmat"
                                }
                            }
                        },
                        "components": [],
                        "child": []
                    }
                ]
            }
        ]
    }
}