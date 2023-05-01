.class public Lcom/delan/app/germanybluetooth/bean/CometChars;
.super Ljava/lang/Object;
.source "CometChars.java"


# instance fields
.field public firmwareVersion:Ljava/lang/String;

.field public flags:Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

.field public friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

.field public holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday7:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday8:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public lcdTimer:Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;

.field public mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

.field public saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

.field public sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

.field public temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

.field public thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

.field public tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

.field public wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 26
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 27
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 28
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 29
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 30
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 31
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 33
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 34
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 35
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 36
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 37
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 38
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 39
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday7:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 40
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday8:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 42
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    .line 43
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    .line 44
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->lcdTimer:Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;

    .line 45
    return-void
.end method


# virtual methods
.method public isIndividualMode()Z
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 74
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 75
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 76
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 77
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    .line 73
    :goto_33
    return v0

    .line 77
    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public on4HeatingPeriodsPerDayChanged(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 48
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 53
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 54
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 55
    return-void
.end method

.method public onIndividualHeatChanged(Z)V
    .registers 3
    .param p1, "isCheck"    # Z

    .prologue
    .line 62
    if-nez p1, :cond_2a

    .line 63
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 64
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 65
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 66
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 68
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .line 70
    :cond_2a
    return-void
.end method

.method public weatherIs4PeriodsPerDay()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method
