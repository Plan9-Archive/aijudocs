/* instantiation template for PS7 */

(* DONT_TOUCH="YES" *) PS7 PS7_i(
	.DDRA(DDRA[14:0]), // inout
	.DDRARB(DDRARB[3:0]), // input
	.DDRBA(DDRBA[2:0]), // inout
	.DDRCASB(DDRCASB), // inout
	.DDRCKE(DDRCKE), // inout
	.DDRCKN(DDRCKN), // inout
	.DDRCKP(DDRCKP), // inout
	.DDRCSB(DDRCSB), // inout
	.DDRDM(DDRDM[3:0]), // inout
	.DDRDQ(DDRDQ[31:0]), // inout
	.DDRDQSN(DDRDQSN[3:0]), // inout
	.DDRDQSP(DDRDQSP[3:0]), // inout
	.DDRDRSTB(DDRDRSTB), // inout
	.DDRODT(DDRODT), // inout
	.DDRRASB(DDRRASB), // inout
	.DDRVRN(DDRVRN), // inout
	.DDRVRP(DDRVRP), // inout
	.DDRWEB(DDRWEB), // inout
	.DMA0ACLK(DMA0ACLK), // input
	.DMA0DAREADY(DMA0DAREADY), // input
	.DMA0DATYPE(DMA0DATYPE[1:0]), // output
	.DMA0DAVALID(DMA0DAVALID), // output
	.DMA0DRLAST(DMA0DRLAST), // input
	.DMA0DRREADY(DMA0DRREADY), // output
	.DMA0DRTYPE(DMA0DRTYPE[1:0]), // input
	.DMA0DRVALID(DMA0DRVALID), // input
	.DMA0RSTN(DMA0RSTN), // output
	.DMA1ACLK(DMA1ACLK), // input
	.DMA1DAREADY(DMA1DAREADY), // input
	.DMA1DATYPE(DMA1DATYPE[1:0]), // output
	.DMA1DAVALID(DMA1DAVALID), // output
	.DMA1DRLAST(DMA1DRLAST), // input
	.DMA1DRREADY(DMA1DRREADY), // output
	.DMA1DRTYPE(DMA1DRTYPE[1:0]), // input
	.DMA1DRVALID(DMA1DRVALID), // input
	.DMA1RSTN(DMA1RSTN), // output
	.DMA2ACLK(DMA2ACLK), // input
	.DMA2DAREADY(DMA2DAREADY), // input
	.DMA2DATYPE(DMA2DATYPE[1:0]), // output
	.DMA2DAVALID(DMA2DAVALID), // output
	.DMA2DRLAST(DMA2DRLAST), // input
	.DMA2DRREADY(DMA2DRREADY), // output
	.DMA2DRTYPE(DMA2DRTYPE[1:0]), // input
	.DMA2DRVALID(DMA2DRVALID), // input
	.DMA2RSTN(DMA2RSTN), // output
	.DMA3ACLK(DMA3ACLK), // input
	.DMA3DAREADY(DMA3DAREADY), // input
	.DMA3DATYPE(DMA3DATYPE[1:0]), // output
	.DMA3DAVALID(DMA3DAVALID), // output
	.DMA3DRLAST(DMA3DRLAST), // input
	.DMA3DRREADY(DMA3DRREADY), // output
	.DMA3DRTYPE(DMA3DRTYPE[1:0]), // input
	.DMA3DRVALID(DMA3DRVALID), // input
	.DMA3RSTN(DMA3RSTN), // output
	.EMIOCAN0PHYRX(EMIOCAN0PHYRX), // input
	.EMIOCAN0PHYTX(EMIOCAN0PHYTX), // output
	.EMIOCAN1PHYRX(EMIOCAN1PHYRX), // input
	.EMIOCAN1PHYTX(EMIOCAN1PHYTX), // output
	.EMIOENET0EXTINTIN(EMIOENET0EXTINTIN), // input
	.EMIOENET0GMIICOL(EMIOENET0GMIICOL), // input
	.EMIOENET0GMIICRS(EMIOENET0GMIICRS), // input
	.EMIOENET0GMIIRXCLK(EMIOENET0GMIIRXCLK), // input
	.EMIOENET0GMIIRXD(EMIOENET0GMIIRXD[7:0]), // input
	.EMIOENET0GMIIRXDV(EMIOENET0GMIIRXDV), // input
	.EMIOENET0GMIIRXER(EMIOENET0GMIIRXER), // input
	.EMIOENET0GMIITXCLK(EMIOENET0GMIITXCLK), // input
	.EMIOENET0GMIITXD(EMIOENET0GMIITXD[7:0]), // output
	.EMIOENET0GMIITXEN(EMIOENET0GMIITXEN), // output
	.EMIOENET0GMIITXER(EMIOENET0GMIITXER), // output
	.EMIOENET0MDIOI(EMIOENET0MDIOI), // input
	.EMIOENET0MDIOMDC(EMIOENET0MDIOMDC), // output
	.EMIOENET0MDIOO(EMIOENET0MDIOO), // output
	.EMIOENET0MDIOTN(EMIOENET0MDIOTN), // output
	.EMIOENET0PTPDELAYREQRX(EMIOENET0PTPDELAYREQRX), // output
	.EMIOENET0PTPDELAYREQTX(EMIOENET0PTPDELAYREQTX), // output
	.EMIOENET0PTPPDELAYREQRX(EMIOENET0PTPPDELAYREQRX), // output
	.EMIOENET0PTPPDELAYREQTX(EMIOENET0PTPPDELAYREQTX), // output
	.EMIOENET0PTPPDELAYRESPRX(EMIOENET0PTPPDELAYRESPRX), // output
	.EMIOENET0PTPPDELAYRESPTX(EMIOENET0PTPPDELAYRESPTX), // output
	.EMIOENET0PTPSYNCFRAMERX(EMIOENET0PTPSYNCFRAMERX), // output
	.EMIOENET0PTPSYNCFRAMETX(EMIOENET0PTPSYNCFRAMETX), // output
	.EMIOENET0SOFRX(EMIOENET0SOFRX), // output
	.EMIOENET0SOFTX(EMIOENET0SOFTX), // output
	.EMIOENET1EXTINTIN(EMIOENET1EXTINTIN), // input
	.EMIOENET1GMIICOL(EMIOENET1GMIICOL), // input
	.EMIOENET1GMIICRS(EMIOENET1GMIICRS), // input
	.EMIOENET1GMIIRXCLK(EMIOENET1GMIIRXCLK), // input
	.EMIOENET1GMIIRXD(EMIOENET1GMIIRXD[7:0]), // input
	.EMIOENET1GMIIRXDV(EMIOENET1GMIIRXDV), // input
	.EMIOENET1GMIIRXER(EMIOENET1GMIIRXER), // input
	.EMIOENET1GMIITXCLK(EMIOENET1GMIITXCLK), // input
	.EMIOENET1GMIITXD(EMIOENET1GMIITXD[7:0]), // output
	.EMIOENET1GMIITXEN(EMIOENET1GMIITXEN), // output
	.EMIOENET1GMIITXER(EMIOENET1GMIITXER), // output
	.EMIOENET1MDIOI(EMIOENET1MDIOI), // input
	.EMIOENET1MDIOMDC(EMIOENET1MDIOMDC), // output
	.EMIOENET1MDIOO(EMIOENET1MDIOO), // output
	.EMIOENET1MDIOTN(EMIOENET1MDIOTN), // output
	.EMIOENET1PTPDELAYREQRX(EMIOENET1PTPDELAYREQRX), // output
	.EMIOENET1PTPDELAYREQTX(EMIOENET1PTPDELAYREQTX), // output
	.EMIOENET1PTPPDELAYREQRX(EMIOENET1PTPPDELAYREQRX), // output
	.EMIOENET1PTPPDELAYREQTX(EMIOENET1PTPPDELAYREQTX), // output
	.EMIOENET1PTPPDELAYRESPRX(EMIOENET1PTPPDELAYRESPRX), // output
	.EMIOENET1PTPPDELAYRESPTX(EMIOENET1PTPPDELAYRESPTX), // output
	.EMIOENET1PTPSYNCFRAMERX(EMIOENET1PTPSYNCFRAMERX), // output
	.EMIOENET1PTPSYNCFRAMETX(EMIOENET1PTPSYNCFRAMETX), // output
	.EMIOENET1SOFRX(EMIOENET1SOFRX), // output
	.EMIOENET1SOFTX(EMIOENET1SOFTX), // output
	.EMIOGPIOI(EMIOGPIOI[63:0]), // input
	.EMIOGPIOO(EMIOGPIOO[63:0]), // output
	.EMIOGPIOTN(EMIOGPIOTN[63:0]), // output
	.EMIOI2C0SCLI(EMIOI2C0SCLI), // input
	.EMIOI2C0SCLO(EMIOI2C0SCLO), // output
	.EMIOI2C0SCLTN(EMIOI2C0SCLTN), // output
	.EMIOI2C0SDAI(EMIOI2C0SDAI), // input
	.EMIOI2C0SDAO(EMIOI2C0SDAO), // output
	.EMIOI2C0SDATN(EMIOI2C0SDATN), // output
	.EMIOI2C1SCLI(EMIOI2C1SCLI), // input
	.EMIOI2C1SCLO(EMIOI2C1SCLO), // output
	.EMIOI2C1SCLTN(EMIOI2C1SCLTN), // output
	.EMIOI2C1SDAI(EMIOI2C1SDAI), // input
	.EMIOI2C1SDAO(EMIOI2C1SDAO), // output
	.EMIOI2C1SDATN(EMIOI2C1SDATN), // output
	.EMIOPJTAGTCK(EMIOPJTAGTCK), // input
	.EMIOPJTAGTDI(EMIOPJTAGTDI), // input
	.EMIOPJTAGTDO(EMIOPJTAGTDO), // output
	.EMIOPJTAGTDTN(EMIOPJTAGTDTN), // output
	.EMIOPJTAGTMS(EMIOPJTAGTMS), // input
	.EMIOSDIO0BUSPOW(EMIOSDIO0BUSPOW), // output
	.EMIOSDIO0BUSVOLT(EMIOSDIO0BUSVOLT[2:0]), // output
	.EMIOSDIO0CDN(EMIOSDIO0CDN), // input
	.EMIOSDIO0CLKFB(EMIOSDIO0CLKFB), // input
	.EMIOSDIO0CLK(EMIOSDIO0CLK), // output
	.EMIOSDIO0CMDI(EMIOSDIO0CMDI), // input
	.EMIOSDIO0CMDO(EMIOSDIO0CMDO), // output
	.EMIOSDIO0CMDTN(EMIOSDIO0CMDTN), // output
	.EMIOSDIO0DATAI(EMIOSDIO0DATAI[3:0]), // input
	.EMIOSDIO0DATAO(EMIOSDIO0DATAO[3:0]), // output
	.EMIOSDIO0DATATN(EMIOSDIO0DATATN[3:0]), // output
	.EMIOSDIO0LED(EMIOSDIO0LED), // output
	.EMIOSDIO0WP(EMIOSDIO0WP), // input
	.EMIOSDIO1BUSPOW(EMIOSDIO1BUSPOW), // output
	.EMIOSDIO1BUSVOLT(EMIOSDIO1BUSVOLT[2:0]), // output
	.EMIOSDIO1CDN(EMIOSDIO1CDN), // input
	.EMIOSDIO1CLKFB(EMIOSDIO1CLKFB), // input
	.EMIOSDIO1CLK(EMIOSDIO1CLK), // output
	.EMIOSDIO1CMDI(EMIOSDIO1CMDI), // input
	.EMIOSDIO1CMDO(EMIOSDIO1CMDO), // output
	.EMIOSDIO1CMDTN(EMIOSDIO1CMDTN), // output
	.EMIOSDIO1DATAI(EMIOSDIO1DATAI[3:0]), // input
	.EMIOSDIO1DATAO(EMIOSDIO1DATAO[3:0]), // output
	.EMIOSDIO1DATATN(EMIOSDIO1DATATN[3:0]), // output
	.EMIOSDIO1LED(EMIOSDIO1LED), // output
	.EMIOSDIO1WP(EMIOSDIO1WP), // input
	.EMIOSPI0MI(EMIOSPI0MI), // input
	.EMIOSPI0MO(EMIOSPI0MO), // output
	.EMIOSPI0MOTN(EMIOSPI0MOTN), // output
	.EMIOSPI0SCLKI(EMIOSPI0SCLKI), // input
	.EMIOSPI0SCLKO(EMIOSPI0SCLKO), // output
	.EMIOSPI0SCLKTN(EMIOSPI0SCLKTN), // output
	.EMIOSPI0SI(EMIOSPI0SI), // input
	.EMIOSPI0SO(EMIOSPI0SO), // output
	.EMIOSPI0SSIN(EMIOSPI0SSIN), // input
	.EMIOSPI0SSNTN(EMIOSPI0SSNTN), // output
	.EMIOSPI0SSON(EMIOSPI0SSON[2:0]), // output
	.EMIOSPI0STN(EMIOSPI0STN), // output
	.EMIOSPI1MI(EMIOSPI1MI), // input
	.EMIOSPI1MO(EMIOSPI1MO), // output
	.EMIOSPI1MOTN(EMIOSPI1MOTN), // output
	.EMIOSPI1SCLKI(EMIOSPI1SCLKI), // input
	.EMIOSPI1SCLKO(EMIOSPI1SCLKO), // output
	.EMIOSPI1SCLKTN(EMIOSPI1SCLKTN), // output
	.EMIOSPI1SI(EMIOSPI1SI), // input
	.EMIOSPI1SO(EMIOSPI1SO), // output
	.EMIOSPI1SSIN(EMIOSPI1SSIN), // input
	.EMIOSPI1SSNTN(EMIOSPI1SSNTN), // output
	.EMIOSPI1SSON(EMIOSPI1SSON[2:0]), // output
	.EMIOSPI1STN(EMIOSPI1STN), // output
	.EMIOSRAMINTIN(EMIOSRAMINTIN), // input
	.EMIOTRACECLK(EMIOTRACECLK), // input
	.EMIOTRACECTL(EMIOTRACECTL), // output
	.EMIOTRACEDATA(EMIOTRACEDATA[31:0]), // output
	.EMIOTTC0CLKI(EMIOTTC0CLKI[2:0]), // input
	.EMIOTTC0WAVEO(EMIOTTC0WAVEO[2:0]), // output
	.EMIOTTC1CLKI(EMIOTTC1CLKI[2:0]), // input
	.EMIOTTC1WAVEO(EMIOTTC1WAVEO[2:0]), // output
	.EMIOUART0CTSN(EMIOUART0CTSN), // input
	.EMIOUART0DCDN(EMIOUART0DCDN), // input
	.EMIOUART0DSRN(EMIOUART0DSRN), // input
	.EMIOUART0DTRN(EMIOUART0DTRN), // output
	.EMIOUART0RIN(EMIOUART0RIN), // input
	.EMIOUART0RTSN(EMIOUART0RTSN), // output
	.EMIOUART0RX(EMIOUART0RX), // input
	.EMIOUART0TX(EMIOUART0TX), // output
	.EMIOUART1CTSN(EMIOUART1CTSN), // input
	.EMIOUART1DCDN(EMIOUART1DCDN), // input
	.EMIOUART1DSRN(EMIOUART1DSRN), // input
	.EMIOUART1DTRN(EMIOUART1DTRN), // output
	.EMIOUART1RIN(EMIOUART1RIN), // input
	.EMIOUART1RTSN(EMIOUART1RTSN), // output
	.EMIOUART1RX(EMIOUART1RX), // input
	.EMIOUART1TX(EMIOUART1TX), // output
	.EMIOUSB0PORTINDCTL(EMIOUSB0PORTINDCTL[1:0]), // output
	.EMIOUSB0VBUSPWRFAULT(EMIOUSB0VBUSPWRFAULT), // input
	.EMIOUSB0VBUSPWRSELECT(EMIOUSB0VBUSPWRSELECT), // output
	.EMIOUSB1PORTINDCTL(EMIOUSB1PORTINDCTL[1:0]), // output
	.EMIOUSB1VBUSPWRFAULT(EMIOUSB1VBUSPWRFAULT), // input
	.EMIOUSB1VBUSPWRSELECT(EMIOUSB1VBUSPWRSELECT), // output
	.EMIOWDTCLKI(EMIOWDTCLKI), // input
	.EMIOWDTRSTO(EMIOWDTRSTO), // output
	.EVENTEVENTI(EVENTEVENTI), // input
	.EVENTEVENTO(EVENTEVENTO), // output
	.EVENTSTANDBYWFE(EVENTSTANDBYWFE[1:0]), // output
	.EVENTSTANDBYWFI(EVENTSTANDBYWFI[1:0]), // output
	.FCLKCLK(FCLKCLK[3:0]), // output
	.FCLKCLKTRIGN(FCLKCLKTRIGN[3:0]), // input
	.FCLKRESETN(FCLKRESETN[3:0]), // output
	.FPGAIDLEN(FPGAIDLEN), // input
	.FTMDTRACEINATID(FTMDTRACEINATID[3:0]), // input
	.FTMDTRACEINCLOCK(FTMDTRACEINCLOCK), // input
	.FTMDTRACEINDATA(FTMDTRACEINDATA[31:0]), // input
	.FTMDTRACEINVALID(FTMDTRACEINVALID), // input
	.FTMTF2PDEBUG(FTMTF2PDEBUG[31:0]), // input
	.FTMTF2PTRIGACK(FTMTF2PTRIGACK[3:0]), // output
	.FTMTF2PTRIG(FTMTF2PTRIG[3:0]), // input
	.FTMTP2FDEBUG(FTMTP2FDEBUG[31:0]), // output
	.FTMTP2FTRIGACK(FTMTP2FTRIGACK[3:0]), // input
	.FTMTP2FTRIG(FTMTP2FTRIG[3:0]), // output
	.IRQF2P(IRQF2P[19:0]), // input
	.IRQP2F(IRQP2F[28:0]), // output
	.MAXIGP0ACLK(MAXIGP0ACLK), // input
	.MAXIGP0ARADDR(MAXIGP0ARADDR[31:0]), // output
	.MAXIGP0ARBURST(MAXIGP0ARBURST[1:0]), // output
	.MAXIGP0ARCACHE(MAXIGP0ARCACHE[3:0]), // output
	.MAXIGP0ARESETN(MAXIGP0ARESETN), // output
	.MAXIGP0ARID(MAXIGP0ARID[11:0]), // output
	.MAXIGP0ARLEN(MAXIGP0ARLEN[3:0]), // output
	.MAXIGP0ARLOCK(MAXIGP0ARLOCK[1:0]), // output
	.MAXIGP0ARPROT(MAXIGP0ARPROT[2:0]), // output
	.MAXIGP0ARQOS(MAXIGP0ARQOS[3:0]), // output
	.MAXIGP0ARREADY(MAXIGP0ARREADY), // input
	.MAXIGP0ARSIZE(MAXIGP0ARSIZE[1:0]), // output
	.MAXIGP0ARVALID(MAXIGP0ARVALID), // output
	.MAXIGP0AWADDR(MAXIGP0AWADDR[31:0]), // output
	.MAXIGP0AWBURST(MAXIGP0AWBURST[1:0]), // output
	.MAXIGP0AWCACHE(MAXIGP0AWCACHE[3:0]), // output
	.MAXIGP0AWID(MAXIGP0AWID[11:0]), // output
	.MAXIGP0AWLEN(MAXIGP0AWLEN[3:0]), // output
	.MAXIGP0AWLOCK(MAXIGP0AWLOCK[1:0]), // output
	.MAXIGP0AWPROT(MAXIGP0AWPROT[2:0]), // output
	.MAXIGP0AWQOS(MAXIGP0AWQOS[3:0]), // output
	.MAXIGP0AWREADY(MAXIGP0AWREADY), // input
	.MAXIGP0AWSIZE(MAXIGP0AWSIZE[1:0]), // output
	.MAXIGP0AWVALID(MAXIGP0AWVALID), // output
	.MAXIGP0BID(MAXIGP0BID[11:0]), // input
	.MAXIGP0BREADY(MAXIGP0BREADY), // output
	.MAXIGP0BRESP(MAXIGP0BRESP[1:0]), // input
	.MAXIGP0BVALID(MAXIGP0BVALID), // input
	.MAXIGP0RDATA(MAXIGP0RDATA[31:0]), // input
	.MAXIGP0RID(MAXIGP0RID[11:0]), // input
	.MAXIGP0RLAST(MAXIGP0RLAST), // input
	.MAXIGP0RREADY(MAXIGP0RREADY), // output
	.MAXIGP0RRESP(MAXIGP0RRESP[1:0]), // input
	.MAXIGP0RVALID(MAXIGP0RVALID), // input
	.MAXIGP0WDATA(MAXIGP0WDATA[31:0]), // output
	.MAXIGP0WID(MAXIGP0WID[11:0]), // output
	.MAXIGP0WLAST(MAXIGP0WLAST), // output
	.MAXIGP0WREADY(MAXIGP0WREADY), // input
	.MAXIGP0WSTRB(MAXIGP0WSTRB[3:0]), // output
	.MAXIGP0WVALID(MAXIGP0WVALID), // output
	.MAXIGP1ACLK(MAXIGP1ACLK), // input
	.MAXIGP1ARADDR(MAXIGP1ARADDR[31:0]), // output
	.MAXIGP1ARBURST(MAXIGP1ARBURST[1:0]), // output
	.MAXIGP1ARCACHE(MAXIGP1ARCACHE[3:0]), // output
	.MAXIGP1ARESETN(MAXIGP1ARESETN), // output
	.MAXIGP1ARID(MAXIGP1ARID[11:0]), // output
	.MAXIGP1ARLEN(MAXIGP1ARLEN[3:0]), // output
	.MAXIGP1ARLOCK(MAXIGP1ARLOCK[1:0]), // output
	.MAXIGP1ARPROT(MAXIGP1ARPROT[2:0]), // output
	.MAXIGP1ARQOS(MAXIGP1ARQOS[3:0]), // output
	.MAXIGP1ARREADY(MAXIGP1ARREADY), // input
	.MAXIGP1ARSIZE(MAXIGP1ARSIZE[1:0]), // output
	.MAXIGP1ARVALID(MAXIGP1ARVALID), // output
	.MAXIGP1AWADDR(MAXIGP1AWADDR[31:0]), // output
	.MAXIGP1AWBURST(MAXIGP1AWBURST[1:0]), // output
	.MAXIGP1AWCACHE(MAXIGP1AWCACHE[3:0]), // output
	.MAXIGP1AWID(MAXIGP1AWID[11:0]), // output
	.MAXIGP1AWLEN(MAXIGP1AWLEN[3:0]), // output
	.MAXIGP1AWLOCK(MAXIGP1AWLOCK[1:0]), // output
	.MAXIGP1AWPROT(MAXIGP1AWPROT[2:0]), // output
	.MAXIGP1AWQOS(MAXIGP1AWQOS[3:0]), // output
	.MAXIGP1AWREADY(MAXIGP1AWREADY), // input
	.MAXIGP1AWSIZE(MAXIGP1AWSIZE[1:0]), // output
	.MAXIGP1AWVALID(MAXIGP1AWVALID), // output
	.MAXIGP1BID(MAXIGP1BID[11:0]), // input
	.MAXIGP1BREADY(MAXIGP1BREADY), // output
	.MAXIGP1BRESP(MAXIGP1BRESP[1:0]), // input
	.MAXIGP1BVALID(MAXIGP1BVALID), // input
	.MAXIGP1RDATA(MAXIGP1RDATA[31:0]), // input
	.MAXIGP1RID(MAXIGP1RID[11:0]), // input
	.MAXIGP1RLAST(MAXIGP1RLAST), // input
	.MAXIGP1RREADY(MAXIGP1RREADY), // output
	.MAXIGP1RRESP(MAXIGP1RRESP[1:0]), // input
	.MAXIGP1RVALID(MAXIGP1RVALID), // input
	.MAXIGP1WDATA(MAXIGP1WDATA[31:0]), // output
	.MAXIGP1WID(MAXIGP1WID[11:0]), // output
	.MAXIGP1WLAST(MAXIGP1WLAST), // output
	.MAXIGP1WREADY(MAXIGP1WREADY), // input
	.MAXIGP1WSTRB(MAXIGP1WSTRB[3:0]), // output
	.MAXIGP1WVALID(MAXIGP1WVALID), // output
	.MIO(MIO[53:0]), // inout
	.PSCLK(PSCLK), // inout
	.PSPORB(PSPORB), // inout
	.PSSRSTB(PSSRSTB), // inout
	.SAXIACPACLK(SAXIACPACLK), // input
	.SAXIACPARADDR(SAXIACPARADDR[31:0]), // input
	.SAXIACPARBURST(SAXIACPARBURST[1:0]), // input
	.SAXIACPARCACHE(SAXIACPARCACHE[3:0]), // input
	.SAXIACPARESETN(SAXIACPARESETN), // output
	.SAXIACPARID(SAXIACPARID[2:0]), // input
	.SAXIACPARLEN(SAXIACPARLEN[3:0]), // input
	.SAXIACPARLOCK(SAXIACPARLOCK[1:0]), // input
	.SAXIACPARPROT(SAXIACPARPROT[2:0]), // input
	.SAXIACPARQOS(SAXIACPARQOS[3:0]), // input
	.SAXIACPARREADY(SAXIACPARREADY), // output
	.SAXIACPARSIZE(SAXIACPARSIZE[1:0]), // input
	.SAXIACPARUSER(SAXIACPARUSER[4:0]), // input
	.SAXIACPARVALID(SAXIACPARVALID), // input
	.SAXIACPAWADDR(SAXIACPAWADDR[31:0]), // input
	.SAXIACPAWBURST(SAXIACPAWBURST[1:0]), // input
	.SAXIACPAWCACHE(SAXIACPAWCACHE[3:0]), // input
	.SAXIACPAWID(SAXIACPAWID[2:0]), // input
	.SAXIACPAWLEN(SAXIACPAWLEN[3:0]), // input
	.SAXIACPAWLOCK(SAXIACPAWLOCK[1:0]), // input
	.SAXIACPAWPROT(SAXIACPAWPROT[2:0]), // input
	.SAXIACPAWQOS(SAXIACPAWQOS[3:0]), // input
	.SAXIACPAWREADY(SAXIACPAWREADY), // output
	.SAXIACPAWSIZE(SAXIACPAWSIZE[1:0]), // input
	.SAXIACPAWUSER(SAXIACPAWUSER[4:0]), // input
	.SAXIACPAWVALID(SAXIACPAWVALID), // input
	.SAXIACPBID(SAXIACPBID[2:0]), // output
	.SAXIACPBREADY(SAXIACPBREADY), // input
	.SAXIACPBRESP(SAXIACPBRESP[1:0]), // output
	.SAXIACPBVALID(SAXIACPBVALID), // output
	.SAXIACPRDATA(SAXIACPRDATA[63:0]), // output
	.SAXIACPRID(SAXIACPRID[2:0]), // output
	.SAXIACPRLAST(SAXIACPRLAST), // output
	.SAXIACPRREADY(SAXIACPRREADY), // input
	.SAXIACPRRESP(SAXIACPRRESP[1:0]), // output
	.SAXIACPRVALID(SAXIACPRVALID), // output
	.SAXIACPWDATA(SAXIACPWDATA[63:0]), // input
	.SAXIACPWID(SAXIACPWID[2:0]), // input
	.SAXIACPWLAST(SAXIACPWLAST), // input
	.SAXIACPWREADY(SAXIACPWREADY), // output
	.SAXIACPWSTRB(SAXIACPWSTRB[7:0]), // input
	.SAXIACPWVALID(SAXIACPWVALID), // input
	.SAXIGP0ACLK(SAXIGP0ACLK), // input
	.SAXIGP0ARADDR(SAXIGP0ARADDR[31:0]), // input
	.SAXIGP0ARBURST(SAXIGP0ARBURST[1:0]), // input
	.SAXIGP0ARCACHE(SAXIGP0ARCACHE[3:0]), // input
	.SAXIGP0ARESETN(SAXIGP0ARESETN), // output
	.SAXIGP0ARID(SAXIGP0ARID[5:0]), // input
	.SAXIGP0ARLEN(SAXIGP0ARLEN[3:0]), // input
	.SAXIGP0ARLOCK(SAXIGP0ARLOCK[1:0]), // input
	.SAXIGP0ARPROT(SAXIGP0ARPROT[2:0]), // input
	.SAXIGP0ARQOS(SAXIGP0ARQOS[3:0]), // input
	.SAXIGP0ARREADY(SAXIGP0ARREADY), // output
	.SAXIGP0ARSIZE(SAXIGP0ARSIZE[1:0]), // input
	.SAXIGP0ARVALID(SAXIGP0ARVALID), // input
	.SAXIGP0AWADDR(SAXIGP0AWADDR[31:0]), // input
	.SAXIGP0AWBURST(SAXIGP0AWBURST[1:0]), // input
	.SAXIGP0AWCACHE(SAXIGP0AWCACHE[3:0]), // input
	.SAXIGP0AWID(SAXIGP0AWID[5:0]), // input
	.SAXIGP0AWLEN(SAXIGP0AWLEN[3:0]), // input
	.SAXIGP0AWLOCK(SAXIGP0AWLOCK[1:0]), // input
	.SAXIGP0AWPROT(SAXIGP0AWPROT[2:0]), // input
	.SAXIGP0AWQOS(SAXIGP0AWQOS[3:0]), // input
	.SAXIGP0AWREADY(SAXIGP0AWREADY), // output
	.SAXIGP0AWSIZE(SAXIGP0AWSIZE[1:0]), // input
	.SAXIGP0AWVALID(SAXIGP0AWVALID), // input
	.SAXIGP0BID(SAXIGP0BID[5:0]), // output
	.SAXIGP0BREADY(SAXIGP0BREADY), // input
	.SAXIGP0BRESP(SAXIGP0BRESP[1:0]), // output
	.SAXIGP0BVALID(SAXIGP0BVALID), // output
	.SAXIGP0RDATA(SAXIGP0RDATA[31:0]), // output
	.SAXIGP0RID(SAXIGP0RID[5:0]), // output
	.SAXIGP0RLAST(SAXIGP0RLAST), // output
	.SAXIGP0RREADY(SAXIGP0RREADY), // input
	.SAXIGP0RRESP(SAXIGP0RRESP[1:0]), // output
	.SAXIGP0RVALID(SAXIGP0RVALID), // output
	.SAXIGP0WDATA(SAXIGP0WDATA[31:0]), // input
	.SAXIGP0WID(SAXIGP0WID[5:0]), // input
	.SAXIGP0WLAST(SAXIGP0WLAST), // input
	.SAXIGP0WREADY(SAXIGP0WREADY), // output
	.SAXIGP0WSTRB(SAXIGP0WSTRB[3:0]), // input
	.SAXIGP0WVALID(SAXIGP0WVALID), // input
	.SAXIGP1ACLK(SAXIGP1ACLK), // input
	.SAXIGP1ARADDR(SAXIGP1ARADDR[31:0]), // input
	.SAXIGP1ARBURST(SAXIGP1ARBURST[1:0]), // input
	.SAXIGP1ARCACHE(SAXIGP1ARCACHE[3:0]), // input
	.SAXIGP1ARESETN(SAXIGP1ARESETN), // output
	.SAXIGP1ARID(SAXIGP1ARID[5:0]), // input
	.SAXIGP1ARLEN(SAXIGP1ARLEN[3:0]), // input
	.SAXIGP1ARLOCK(SAXIGP1ARLOCK[1:0]), // input
	.SAXIGP1ARPROT(SAXIGP1ARPROT[2:0]), // input
	.SAXIGP1ARQOS(SAXIGP1ARQOS[3:0]), // input
	.SAXIGP1ARREADY(SAXIGP1ARREADY), // output
	.SAXIGP1ARSIZE(SAXIGP1ARSIZE[1:0]), // input
	.SAXIGP1ARVALID(SAXIGP1ARVALID), // input
	.SAXIGP1AWADDR(SAXIGP1AWADDR[31:0]), // input
	.SAXIGP1AWBURST(SAXIGP1AWBURST[1:0]), // input
	.SAXIGP1AWCACHE(SAXIGP1AWCACHE[3:0]), // input
	.SAXIGP1AWID(SAXIGP1AWID[5:0]), // input
	.SAXIGP1AWLEN(SAXIGP1AWLEN[3:0]), // input
	.SAXIGP1AWLOCK(SAXIGP1AWLOCK[1:0]), // input
	.SAXIGP1AWPROT(SAXIGP1AWPROT[2:0]), // input
	.SAXIGP1AWQOS(SAXIGP1AWQOS[3:0]), // input
	.SAXIGP1AWREADY(SAXIGP1AWREADY), // output
	.SAXIGP1AWSIZE(SAXIGP1AWSIZE[1:0]), // input
	.SAXIGP1AWVALID(SAXIGP1AWVALID), // input
	.SAXIGP1BID(SAXIGP1BID[5:0]), // output
	.SAXIGP1BREADY(SAXIGP1BREADY), // input
	.SAXIGP1BRESP(SAXIGP1BRESP[1:0]), // output
	.SAXIGP1BVALID(SAXIGP1BVALID), // output
	.SAXIGP1RDATA(SAXIGP1RDATA[31:0]), // output
	.SAXIGP1RID(SAXIGP1RID[5:0]), // output
	.SAXIGP1RLAST(SAXIGP1RLAST), // output
	.SAXIGP1RREADY(SAXIGP1RREADY), // input
	.SAXIGP1RRESP(SAXIGP1RRESP[1:0]), // output
	.SAXIGP1RVALID(SAXIGP1RVALID), // output
	.SAXIGP1WDATA(SAXIGP1WDATA[31:0]), // input
	.SAXIGP1WID(SAXIGP1WID[5:0]), // input
	.SAXIGP1WLAST(SAXIGP1WLAST), // input
	.SAXIGP1WREADY(SAXIGP1WREADY), // output
	.SAXIGP1WSTRB(SAXIGP1WSTRB[3:0]), // input
	.SAXIGP1WVALID(SAXIGP1WVALID), // input
	.SAXIHP0ACLK(SAXIHP0ACLK), // input
	.SAXIHP0ARADDR(SAXIHP0ARADDR[31:0]), // input
	.SAXIHP0ARBURST(SAXIHP0ARBURST[1:0]), // input
	.SAXIHP0ARCACHE(SAXIHP0ARCACHE[3:0]), // input
	.SAXIHP0ARESETN(SAXIHP0ARESETN), // output
	.SAXIHP0ARID(SAXIHP0ARID[5:0]), // input
	.SAXIHP0ARLEN(SAXIHP0ARLEN[3:0]), // input
	.SAXIHP0ARLOCK(SAXIHP0ARLOCK[1:0]), // input
	.SAXIHP0ARPROT(SAXIHP0ARPROT[2:0]), // input
	.SAXIHP0ARQOS(SAXIHP0ARQOS[3:0]), // input
	.SAXIHP0ARREADY(SAXIHP0ARREADY), // output
	.SAXIHP0ARSIZE(SAXIHP0ARSIZE[1:0]), // input
	.SAXIHP0ARVALID(SAXIHP0ARVALID), // input
	.SAXIHP0AWADDR(SAXIHP0AWADDR[31:0]), // input
	.SAXIHP0AWBURST(SAXIHP0AWBURST[1:0]), // input
	.SAXIHP0AWCACHE(SAXIHP0AWCACHE[3:0]), // input
	.SAXIHP0AWID(SAXIHP0AWID[5:0]), // input
	.SAXIHP0AWLEN(SAXIHP0AWLEN[3:0]), // input
	.SAXIHP0AWLOCK(SAXIHP0AWLOCK[1:0]), // input
	.SAXIHP0AWPROT(SAXIHP0AWPROT[2:0]), // input
	.SAXIHP0AWQOS(SAXIHP0AWQOS[3:0]), // input
	.SAXIHP0AWREADY(SAXIHP0AWREADY), // output
	.SAXIHP0AWSIZE(SAXIHP0AWSIZE[1:0]), // input
	.SAXIHP0AWVALID(SAXIHP0AWVALID), // input
	.SAXIHP0BID(SAXIHP0BID[5:0]), // output
	.SAXIHP0BREADY(SAXIHP0BREADY), // input
	.SAXIHP0BRESP(SAXIHP0BRESP[1:0]), // output
	.SAXIHP0BVALID(SAXIHP0BVALID), // output
	.SAXIHP0RACOUNT(SAXIHP0RACOUNT[2:0]), // output
	.SAXIHP0RCOUNT(SAXIHP0RCOUNT[7:0]), // output
	.SAXIHP0RDATA(SAXIHP0RDATA[63:0]), // output
	.SAXIHP0RDISSUECAP1EN(SAXIHP0RDISSUECAP1EN), // input
	.SAXIHP0RID(SAXIHP0RID[5:0]), // output
	.SAXIHP0RLAST(SAXIHP0RLAST), // output
	.SAXIHP0RREADY(SAXIHP0RREADY), // input
	.SAXIHP0RRESP(SAXIHP0RRESP[1:0]), // output
	.SAXIHP0RVALID(SAXIHP0RVALID), // output
	.SAXIHP0WACOUNT(SAXIHP0WACOUNT[5:0]), // output
	.SAXIHP0WCOUNT(SAXIHP0WCOUNT[7:0]), // output
	.SAXIHP0WDATA(SAXIHP0WDATA[63:0]), // input
	.SAXIHP0WID(SAXIHP0WID[5:0]), // input
	.SAXIHP0WLAST(SAXIHP0WLAST), // input
	.SAXIHP0WREADY(SAXIHP0WREADY), // output
	.SAXIHP0WRISSUECAP1EN(SAXIHP0WRISSUECAP1EN), // input
	.SAXIHP0WSTRB(SAXIHP0WSTRB[7:0]), // input
	.SAXIHP0WVALID(SAXIHP0WVALID), // input
	.SAXIHP1ACLK(SAXIHP1ACLK), // input
	.SAXIHP1ARADDR(SAXIHP1ARADDR[31:0]), // input
	.SAXIHP1ARBURST(SAXIHP1ARBURST[1:0]), // input
	.SAXIHP1ARCACHE(SAXIHP1ARCACHE[3:0]), // input
	.SAXIHP1ARESETN(SAXIHP1ARESETN), // output
	.SAXIHP1ARID(SAXIHP1ARID[5:0]), // input
	.SAXIHP1ARLEN(SAXIHP1ARLEN[3:0]), // input
	.SAXIHP1ARLOCK(SAXIHP1ARLOCK[1:0]), // input
	.SAXIHP1ARPROT(SAXIHP1ARPROT[2:0]), // input
	.SAXIHP1ARQOS(SAXIHP1ARQOS[3:0]), // input
	.SAXIHP1ARREADY(SAXIHP1ARREADY), // output
	.SAXIHP1ARSIZE(SAXIHP1ARSIZE[1:0]), // input
	.SAXIHP1ARVALID(SAXIHP1ARVALID), // input
	.SAXIHP1AWADDR(SAXIHP1AWADDR[31:0]), // input
	.SAXIHP1AWBURST(SAXIHP1AWBURST[1:0]), // input
	.SAXIHP1AWCACHE(SAXIHP1AWCACHE[3:0]), // input
	.SAXIHP1AWID(SAXIHP1AWID[5:0]), // input
	.SAXIHP1AWLEN(SAXIHP1AWLEN[3:0]), // input
	.SAXIHP1AWLOCK(SAXIHP1AWLOCK[1:0]), // input
	.SAXIHP1AWPROT(SAXIHP1AWPROT[2:0]), // input
	.SAXIHP1AWQOS(SAXIHP1AWQOS[3:0]), // input
	.SAXIHP1AWREADY(SAXIHP1AWREADY), // output
	.SAXIHP1AWSIZE(SAXIHP1AWSIZE[1:0]), // input
	.SAXIHP1AWVALID(SAXIHP1AWVALID), // input
	.SAXIHP1BID(SAXIHP1BID[5:0]), // output
	.SAXIHP1BREADY(SAXIHP1BREADY), // input
	.SAXIHP1BRESP(SAXIHP1BRESP[1:0]), // output
	.SAXIHP1BVALID(SAXIHP1BVALID), // output
	.SAXIHP1RACOUNT(SAXIHP1RACOUNT[2:0]), // output
	.SAXIHP1RCOUNT(SAXIHP1RCOUNT[7:0]), // output
	.SAXIHP1RDATA(SAXIHP1RDATA[63:0]), // output
	.SAXIHP1RDISSUECAP1EN(SAXIHP1RDISSUECAP1EN), // input
	.SAXIHP1RID(SAXIHP1RID[5:0]), // output
	.SAXIHP1RLAST(SAXIHP1RLAST), // output
	.SAXIHP1RREADY(SAXIHP1RREADY), // input
	.SAXIHP1RRESP(SAXIHP1RRESP[1:0]), // output
	.SAXIHP1RVALID(SAXIHP1RVALID), // output
	.SAXIHP1WACOUNT(SAXIHP1WACOUNT[5:0]), // output
	.SAXIHP1WCOUNT(SAXIHP1WCOUNT[7:0]), // output
	.SAXIHP1WDATA(SAXIHP1WDATA[63:0]), // input
	.SAXIHP1WID(SAXIHP1WID[5:0]), // input
	.SAXIHP1WLAST(SAXIHP1WLAST), // input
	.SAXIHP1WREADY(SAXIHP1WREADY), // output
	.SAXIHP1WRISSUECAP1EN(SAXIHP1WRISSUECAP1EN), // input
	.SAXIHP1WSTRB(SAXIHP1WSTRB[7:0]), // input
	.SAXIHP1WVALID(SAXIHP1WVALID), // input
	.SAXIHP2ACLK(SAXIHP2ACLK), // input
	.SAXIHP2ARADDR(SAXIHP2ARADDR[31:0]), // input
	.SAXIHP2ARBURST(SAXIHP2ARBURST[1:0]), // input
	.SAXIHP2ARCACHE(SAXIHP2ARCACHE[3:0]), // input
	.SAXIHP2ARESETN(SAXIHP2ARESETN), // output
	.SAXIHP2ARID(SAXIHP2ARID[5:0]), // input
	.SAXIHP2ARLEN(SAXIHP2ARLEN[3:0]), // input
	.SAXIHP2ARLOCK(SAXIHP2ARLOCK[1:0]), // input
	.SAXIHP2ARPROT(SAXIHP2ARPROT[2:0]), // input
	.SAXIHP2ARQOS(SAXIHP2ARQOS[3:0]), // input
	.SAXIHP2ARREADY(SAXIHP2ARREADY), // output
	.SAXIHP2ARSIZE(SAXIHP2ARSIZE[1:0]), // input
	.SAXIHP2ARVALID(SAXIHP2ARVALID), // input
	.SAXIHP2AWADDR(SAXIHP2AWADDR[31:0]), // input
	.SAXIHP2AWBURST(SAXIHP2AWBURST[1:0]), // input
	.SAXIHP2AWCACHE(SAXIHP2AWCACHE[3:0]), // input
	.SAXIHP2AWID(SAXIHP2AWID[5:0]), // input
	.SAXIHP2AWLEN(SAXIHP2AWLEN[3:0]), // input
	.SAXIHP2AWLOCK(SAXIHP2AWLOCK[1:0]), // input
	.SAXIHP2AWPROT(SAXIHP2AWPROT[2:0]), // input
	.SAXIHP2AWQOS(SAXIHP2AWQOS[3:0]), // input
	.SAXIHP2AWREADY(SAXIHP2AWREADY), // output
	.SAXIHP2AWSIZE(SAXIHP2AWSIZE[1:0]), // input
	.SAXIHP2AWVALID(SAXIHP2AWVALID), // input
	.SAXIHP2BID(SAXIHP2BID[5:0]), // output
	.SAXIHP2BREADY(SAXIHP2BREADY), // input
	.SAXIHP2BRESP(SAXIHP2BRESP[1:0]), // output
	.SAXIHP2BVALID(SAXIHP2BVALID), // output
	.SAXIHP2RACOUNT(SAXIHP2RACOUNT[2:0]), // output
	.SAXIHP2RCOUNT(SAXIHP2RCOUNT[7:0]), // output
	.SAXIHP2RDATA(SAXIHP2RDATA[63:0]), // output
	.SAXIHP2RDISSUECAP1EN(SAXIHP2RDISSUECAP1EN), // input
	.SAXIHP2RID(SAXIHP2RID[5:0]), // output
	.SAXIHP2RLAST(SAXIHP2RLAST), // output
	.SAXIHP2RREADY(SAXIHP2RREADY), // input
	.SAXIHP2RRESP(SAXIHP2RRESP[1:0]), // output
	.SAXIHP2RVALID(SAXIHP2RVALID), // output
	.SAXIHP2WACOUNT(SAXIHP2WACOUNT[5:0]), // output
	.SAXIHP2WCOUNT(SAXIHP2WCOUNT[7:0]), // output
	.SAXIHP2WDATA(SAXIHP2WDATA[63:0]), // input
	.SAXIHP2WID(SAXIHP2WID[5:0]), // input
	.SAXIHP2WLAST(SAXIHP2WLAST), // input
	.SAXIHP2WREADY(SAXIHP2WREADY), // output
	.SAXIHP2WRISSUECAP1EN(SAXIHP2WRISSUECAP1EN), // input
	.SAXIHP2WSTRB(SAXIHP2WSTRB[7:0]), // input
	.SAXIHP2WVALID(SAXIHP2WVALID), // input
	.SAXIHP3ACLK(SAXIHP3ACLK), // input
	.SAXIHP3ARADDR(SAXIHP3ARADDR[31:0]), // input
	.SAXIHP3ARBURST(SAXIHP3ARBURST[1:0]), // input
	.SAXIHP3ARCACHE(SAXIHP3ARCACHE[3:0]), // input
	.SAXIHP3ARESETN(SAXIHP3ARESETN), // output
	.SAXIHP3ARID(SAXIHP3ARID[5:0]), // input
	.SAXIHP3ARLEN(SAXIHP3ARLEN[3:0]), // input
	.SAXIHP3ARLOCK(SAXIHP3ARLOCK[1:0]), // input
	.SAXIHP3ARPROT(SAXIHP3ARPROT[2:0]), // input
	.SAXIHP3ARQOS(SAXIHP3ARQOS[3:0]), // input
	.SAXIHP3ARREADY(SAXIHP3ARREADY), // output
	.SAXIHP3ARSIZE(SAXIHP3ARSIZE[1:0]), // input
	.SAXIHP3ARVALID(SAXIHP3ARVALID), // input
	.SAXIHP3AWADDR(SAXIHP3AWADDR[31:0]), // input
	.SAXIHP3AWBURST(SAXIHP3AWBURST[1:0]), // input
	.SAXIHP3AWCACHE(SAXIHP3AWCACHE[3:0]), // input
	.SAXIHP3AWID(SAXIHP3AWID[5:0]), // input
	.SAXIHP3AWLEN(SAXIHP3AWLEN[3:0]), // input
	.SAXIHP3AWLOCK(SAXIHP3AWLOCK[1:0]), // input
	.SAXIHP3AWPROT(SAXIHP3AWPROT[2:0]), // input
	.SAXIHP3AWQOS(SAXIHP3AWQOS[3:0]), // input
	.SAXIHP3AWREADY(SAXIHP3AWREADY), // output
	.SAXIHP3AWSIZE(SAXIHP3AWSIZE[1:0]), // input
	.SAXIHP3AWVALID(SAXIHP3AWVALID), // input
	.SAXIHP3BID(SAXIHP3BID[5:0]), // output
	.SAXIHP3BREADY(SAXIHP3BREADY), // input
	.SAXIHP3BRESP(SAXIHP3BRESP[1:0]), // output
	.SAXIHP3BVALID(SAXIHP3BVALID), // output
	.SAXIHP3RACOUNT(SAXIHP3RACOUNT[2:0]), // output
	.SAXIHP3RCOUNT(SAXIHP3RCOUNT[7:0]), // output
	.SAXIHP3RDATA(SAXIHP3RDATA[63:0]), // output
	.SAXIHP3RDISSUECAP1EN(SAXIHP3RDISSUECAP1EN), // input
	.SAXIHP3RID(SAXIHP3RID[5:0]), // output
	.SAXIHP3RLAST(SAXIHP3RLAST), // output
	.SAXIHP3RREADY(SAXIHP3RREADY), // input
	.SAXIHP3RRESP(SAXIHP3RRESP[1:0]), // output
	.SAXIHP3RVALID(SAXIHP3RVALID), // output
	.SAXIHP3WACOUNT(SAXIHP3WACOUNT[5:0]), // output
	.SAXIHP3WCOUNT(SAXIHP3WCOUNT[7:0]), // output
	.SAXIHP3WDATA(SAXIHP3WDATA[63:0]), // input
	.SAXIHP3WID(SAXIHP3WID[5:0]), // input
	.SAXIHP3WLAST(SAXIHP3WLAST), // input
	.SAXIHP3WREADY(SAXIHP3WREADY), // output
	.SAXIHP3WRISSUECAP1EN(SAXIHP3WRISSUECAP1EN), // input
	.SAXIHP3WSTRB(SAXIHP3WSTRB[7:0]), // input
	.SAXIHP3WVALID(SAXIHP3WVALID), // input
);
