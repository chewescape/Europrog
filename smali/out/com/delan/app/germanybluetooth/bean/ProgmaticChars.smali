.class public Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
.super Ljava/lang/Object;
.source "ProgmaticChars.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public heatingTmperature:B

.field public holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

.field public mFlag:Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

.field public transient mTime:Lcom/delan/app/germanybluetooth/bean/chars/Time;

.field public mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public offset:B

.field public saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public savingTemperature:B

.field public sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

.field public wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars$1;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars$1;-><init>()V

    sput-object v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->savingTemperature:B

    .line 27
    const/16 v0, 0x2a

    iput-byte v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->heatingTmperature:B

    .line 31
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 32
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 33
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 34
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 35
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 36
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 37
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 38
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 39
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 40
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 41
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 42
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 43
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 44
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mFlag:Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x20

    iput-byte v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->savingTemperature:B

    .line 27
    const/16 v0, 0x2a

    iput-byte v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->heatingTmperature:B

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/Time;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mTime:Lcom/delan/app/germanybluetooth/bean/chars/Time;

    .line 82
    const-class v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 83
    const-class v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 84
    const-class v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 85
    const-class v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 86
    const-class v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 87
    const-class v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 88
    const-class v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mFlag:Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->savingTemperature:B

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->heatingTmperature:B

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->offset:B

    .line 99
    return-void
.end method


# virtual methods
.method public isIndividualMode()Z
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 74
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 75
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 76
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 77
    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;)Z

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
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 53
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

    .line 54
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->on4PeriodsPerDayChange(Z)V

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
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 64
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 65
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 66
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 68
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    .line 70
    :cond_2a
    return-void
.end method

.method public weatherIs4PeriodsPerDay()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->weatherIs4PeriodsPerDay()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

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
