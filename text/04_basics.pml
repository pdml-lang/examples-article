[ch [title Fundamental Examples]


    [ch [title Hello]
    
        [code
            [hello]
        code]
        
        The above code illustrates the simplest possible PDML document.
        
        It's a root node with name [c hello] and no content (no child nodes). [c hello] is an empty root node.
    ]


    [ch [title Text node]

        [code
            [teachers Bob]
        code]
        The node with name [c teachers] contains the text [c Bob]. The node's name and text are separated by a space character.

        A node's text can contain spaces:
        [code
            [teachers Bob and Alice]
        code]
        Now node [c teachers] contains the text [c Bob and Alice]

        New lines and Unicode characters can also be used in a node's text:
        
        [code
            [info He said:
                "She said: 'All is well!'" 😃]
        code]
    ]



    [ch [title Node with one child node]

        [code
            [config [color orange]]
        code]
        Node [c config] has one child node with name [c color] and text [c orange].
    ]


    [ch [title Tree]
        [code
            [config
                [color orange]
                [size
                    [width 162]
                    [height 100]
                ]
            ]
        code]
        Node [c config] has two child nodes: [c color] and [c size]. Node [c size] has two child nodes too: [c width] and [c height].
    ]


    [ch [title Markup code]

        Suppose we want to render the following text in a browser:

        We can write text in [i italic], [b bold], or [i [b italic and bold]].

        In HTML we would write:
        [code
            <div>We can write text in <i>italic</i>, <b>bold</b>, or <i><b>italic and bold</b></i>.</div>
        code]
        
        In PDML the code becomes:
        [code
            [div We can write text in [i italic], [b bold], or [i [b italic and bold]].]
        code]
    ]

    [ch [title Escape characters in text]
    
        If node [c p] contains the text:
        
        [sp][sp][sp][sp]foo\\bar\[12\]

        ... then \[, \], and \\ must be escaped:
        [code
            [p foo\\bar\[12\]]
        code]
    ]
]
