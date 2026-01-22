uses
  System;
begin
  var nElems := 0;
  Console.Clear();
  Console.WriteLine('Input a count of elements');
  Int32.TryParse(Console.ReadLine(), nElems);
  var iArray : array of shortint := new shortint[nElems];
  var oRnd := New Random();
  for var i := 0 to nElems - 1 do
  begin
    var nItem := oRnd.Next(1, 10);
    iArray[i] := nItem;
  end;
  var nProduct := 1;
  for var i := 0 to nElems - 1 do
  begin
    nProduct *= iArray[i];
    Console.Write(iArray[i] + ' ');
  end;
  Console.WriteLine
  (
    #13#10+$'The Product of {nElems} elements of the array is:{nProduct}'
  );
  Console.Read();
end.