.class public Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;
.super Ljava/lang/Object;
.source "ProgtimeChars.java"


# instance fields
.field public flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

.field public friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public result:I

.field public saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public startDataTransfer:I

.field public sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public time:Lcom/delan/app/germanybluetooth/bean/chars/Time;

.field public tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 23
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 24
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 25
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 26
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 27
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 28
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 29
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    .line 30
    return-void
.end method


# virtual methods
.method public isIndividualMode()Z
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 59
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 60
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 61
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 62
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    .line 58
    :goto_33
    return v0

    .line 62
    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public on4HeatingPeriodsPerDayChanged(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 35
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 37
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 38
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 39
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 40
    return-void
.end method

.method public onIndividualHeatChanged(Z)V
    .registers 3
    .param p1, "isCheck"    # Z

    .prologue
    .line 47
    if-nez p1, :cond_2a

    .line 48
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 53
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 55
    :cond_2a
    return-void
.end method

.method public weatherIs4PeriodsPerDay()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method
