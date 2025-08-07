struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
_BUR_LOCAL signed short LoopCount;
_BUR_LOCAL unsigned char New_Variable;
_BUR_LOCAL struct TON TON_0;
