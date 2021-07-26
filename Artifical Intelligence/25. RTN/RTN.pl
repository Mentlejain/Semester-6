initial(0).
final(1).
arc(0,c,6). arc(6,o,5). arc(5,l,4).
arc(4,o,3). arc(3,u,2). arc(3,r,1). arc(2,r,1).
start:-write('RTN Test:colo(u)r\n'),
write('Enter character list: '),
read(L),
test(L).

test(Word):-initial(Node),recognise(Node,Word).

recognise(Node,[]):-final(Node).

recognise(FromNode,String):-arc(FromNode,Label,ToNode),traverse(Label,String,NewString),recognise(ToNode,NewString).

traverse(First,[First|Rest],Rest).).