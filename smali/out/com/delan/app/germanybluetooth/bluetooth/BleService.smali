.class public Lcom/delan/app/germanybluetooth/bluetooth/BleService;
.super Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;,
        Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;
    }
.end annotation


# static fields
.field private static final SCANNING_TIMEOUT:J = 0x2ee0L


# instance fields
.field public connectBleTimeout:Ljava/lang/Runnable;

.field private isRunning:Z

.field private mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

.field private mCometFlagsDelay:I

.field private mCometHoliday1Delay:I

.field private mCometSwitchPointFridayDelay:I

.field private mCometSwitchPointMondayDelay:I

.field private mCometSwitchPointSaturdayDelay:I

.field private mCometSwitchPointSundayDelay:I

.field private mCometSwitchPointThursdayDelay:I

.field private mCometSwitchPointTuesdayDelay:I

.field private mCometSwitchPointWednesdayDelay:I

.field private mCometTemperatureDelay:I

.field private mProgtime_flagsDelay:I

.field private mProgtime_start_datentransfer:I

.field private mProgtime_switch_point_fridayDelay:I

.field private mProgtime_switch_point_mondayDelay:I

.field private mProgtime_switch_point_saturdayDelay:I

.field private mProgtime_switch_point_sundayDelay:I

.field private mProgtime_switch_point_thursdayDelay:I

.field private mProgtime_switch_point_tuesdayDelay:I

.field private mProgtime_switch_point_wednesdayDelay:I

.field private mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

.field private mScanning:Z

.field private scanningTimeout:Ljava/lang/Runnable;

.field private toSaveProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;",
            ">;>;"
        }
    .end annotation
.end field

.field private uiCallBack:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 63
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mScanning:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->isRunning:Z

    .line 73
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointMondayDelay:I

    .line 74
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointTuesdayDelay:I

    .line 75
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointWednesdayDelay:I

    .line 76
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointThursdayDelay:I

    .line 77
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointFridayDelay:I

    .line 78
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSaturdayDelay:I

    .line 79
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSundayDelay:I

    .line 80
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometHoliday1Delay:I

    .line 81
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometFlagsDelay:I

    .line 82
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometTemperatureDelay:I

    .line 83
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_mondayDelay:I

    .line 84
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_tuesdayDelay:I

    .line 85
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_wednesdayDelay:I

    .line 86
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_thursdayDelay:I

    .line 87
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_fridayDelay:I

    .line 88
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_saturdayDelay:I

    .line 89
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_sundayDelay:I

    .line 90
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_flagsDelay:I

    .line 91
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_start_datentransfer:I

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiCallBack:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometHoliday1Delay:I

    return v0
.end method

.method static synthetic access$1002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometHoliday1Delay:I

    return p1
.end method

.method static synthetic access$1006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometHoliday1Delay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometHoliday1Delay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometFlagsDelay:I

    return v0
.end method

.method static synthetic access$1102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometFlagsDelay:I

    return p1
.end method

.method static synthetic access$1106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometFlagsDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometFlagsDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometTemperatureDelay:I

    return v0
.end method

.method static synthetic access$1202(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometTemperatureDelay:I

    return p1
.end method

.method static synthetic access$1206(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometTemperatureDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometTemperatureDelay:I

    return v0
.end method

.method static synthetic access$1300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_mondayDelay:I

    return v0
.end method

.method static synthetic access$1302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_mondayDelay:I

    return p1
.end method

.method static synthetic access$1306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_mondayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_mondayDelay:I

    return v0
.end method

.method static synthetic access$1400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_tuesdayDelay:I

    return v0
.end method

.method static synthetic access$1402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_tuesdayDelay:I

    return p1
.end method

.method static synthetic access$1406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_tuesdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_tuesdayDelay:I

    return v0
.end method

.method static synthetic access$1500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_wednesdayDelay:I

    return v0
.end method

.method static synthetic access$1502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_wednesdayDelay:I

    return p1
.end method

.method static synthetic access$1506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_wednesdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_wednesdayDelay:I

    return v0
.end method

.method static synthetic access$1600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_thursdayDelay:I

    return v0
.end method

.method static synthetic access$1602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_thursdayDelay:I

    return p1
.end method

.method static synthetic access$1606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_thursdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_thursdayDelay:I

    return v0
.end method

.method static synthetic access$1700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_fridayDelay:I

    return v0
.end method

.method static synthetic access$1702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_fridayDelay:I

    return p1
.end method

.method static synthetic access$1706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_fridayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_fridayDelay:I

    return v0
.end method

.method static synthetic access$1800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_saturdayDelay:I

    return v0
.end method

.method static synthetic access$1802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_saturdayDelay:I

    return p1
.end method

.method static synthetic access$1806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_saturdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_saturdayDelay:I

    return v0
.end method

.method static synthetic access$1900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_sundayDelay:I

    return v0
.end method

.method static synthetic access$1902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_sundayDelay:I

    return p1
.end method

.method static synthetic access$1906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_sundayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_sundayDelay:I

    return v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->isRunning:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_flagsDelay:I

    return v0
.end method

.method static synthetic access$2002(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_flagsDelay:I

    return p1
.end method

.method static synthetic access$2006(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_flagsDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_flagsDelay:I

    return v0
.end method

.method static synthetic access$2100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_start_datentransfer:I

    return v0
.end method

.method static synthetic access$2102(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_start_datentransfer:I

    return p1
.end method

.method static synthetic access$2106(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_start_datentransfer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_start_datentransfer:I

    return v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointMondayDelay:I

    return v0
.end method

.method static synthetic access$302(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointMondayDelay:I

    return p1
.end method

.method static synthetic access$306(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointMondayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointMondayDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointTuesdayDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointTuesdayDelay:I

    return p1
.end method

.method static synthetic access$406(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointTuesdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointTuesdayDelay:I

    return v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointWednesdayDelay:I

    return v0
.end method

.method static synthetic access$502(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointWednesdayDelay:I

    return p1
.end method

.method static synthetic access$506(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointWednesdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointWednesdayDelay:I

    return v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointThursdayDelay:I

    return v0
.end method

.method static synthetic access$602(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointThursdayDelay:I

    return p1
.end method

.method static synthetic access$606(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointThursdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointThursdayDelay:I

    return v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointFridayDelay:I

    return v0
.end method

.method static synthetic access$702(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointFridayDelay:I

    return p1
.end method

.method static synthetic access$706(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointFridayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointFridayDelay:I

    return v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSaturdayDelay:I

    return v0
.end method

.method static synthetic access$802(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSaturdayDelay:I

    return p1
.end method

.method static synthetic access$806(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSaturdayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSaturdayDelay:I

    return v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSundayDelay:I

    return v0
.end method

.method static synthetic access$902(Lcom/delan/app/germanybluetooth/bluetooth/BleService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSundayDelay:I

    return p1
.end method

.method static synthetic access$906(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 63
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSundayDelay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSundayDelay:I

    return v0
.end method

.method private addScanningTimeout()V
    .registers 5

    .prologue
    .line 185
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->scanningTimeout:Ljava/lang/Runnable;

    .line 193
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 194
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->scanningTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    :cond_14
    return-void
.end method

.method public static disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V
    .registers 2
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 912
    if-nez p0, :cond_3

    .line 918
    :goto_2
    return-void

    .line 914
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 915
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-boolean v0, v0, Lcom/delan/app/germanybluetooth/MyApplication;->isSamsung:Z

    if-nez v0, :cond_f

    .line 916
    invoke-static {p0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 917
    :cond_f
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_2
.end method

.method private readWriteCharacter(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 8
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "isWrite"    # Z

    .prologue
    const/4 v2, 0x1

    .line 220
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    iget-object v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_a

    .line 267
    :cond_9
    :goto_9
    return-void

    .line 223
    :cond_a
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "uuid":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_68

    :cond_1e
    :goto_1e
    packed-switch v1, :pswitch_data_7a

    .line 231
    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->successSetPin:I

    if-ne v1, v2, :cond_9

    .line 235
    :pswitch_25
    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getReadWriteRight()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 236
    if-eqz p3, :cond_59

    .line 237
    invoke-virtual {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->rawWriteDataToCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_9

    .line 224
    :sswitch_31
    const-string v3, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x0

    goto :goto_1e

    :sswitch_3b
    const-string v3, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v1, v2

    goto :goto_1e

    :sswitch_45
    const-string v3, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x2

    goto :goto_1e

    :sswitch_4f
    const-string v3, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x3

    goto :goto_1e

    .line 239
    :cond_59
    invoke-virtual {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->rawRequestRead(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_9

    .line 240
    :cond_5d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_9

    .line 224
    :sswitch_data_68
    .sparse-switch
        -0x5dd824f5 -> :sswitch_3b
        -0x1edf78b -> :sswitch_45
        0x4f881209 -> :sswitch_31
        0x67a09c95 -> :sswitch_4f
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public static refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 7
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v3, 0x0

    .line 922
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "refresh"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 923
    .local v1, "localMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_24

    .line 924
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    move-result v2

    .line 929
    .end local v1    # "localMethod":Ljava/lang/reflect/Method;
    :goto_1d
    return v2

    .line 926
    :catch_1e
    move-exception v0

    .line 927
    .local v0, "localException":Ljava/lang/Exception;
    const-string v2, "An exception occured while refreshing device"

    invoke-static {v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_24
    move v2, v3

    .line 929
    goto :goto_1d
.end method

.method private saveProfile(Ljava/util/ArrayList;B)V
    .registers 22
    .param p2, "numberOfProfiles"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;",
            ">;B)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p1, "progmaticCharsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_15

    .line 884
    :cond_14
    :goto_14
    return-void

    .line 784
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    if-nez v12, :cond_60

    .line 785
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    .line 788
    :goto_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v4

    .line 789
    .local v4, "deviceBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_30
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_68

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 790
    .local v1, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 791
    .local v6, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    new-instance v13, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;

    const-string v14, "47e9ef3e-47e9-11e4-8939-164230d1df67"

    const/4 v15, 0x1

    new-array v15, v15, [B

    const/16 v16, 0x0

    aput-byte p2, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v14, v15}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;[B)V

    invoke-virtual {v6, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 787
    .end local v1    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v4    # "deviceBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    .end local v6    # "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;>;"
    :cond_60
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    goto :goto_24

    .line 794
    .restart local v4    # "deviceBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_68
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2a1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 795
    .local v3, "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 796
    .local v8, "profileIndex":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_82
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 797
    .restart local v1    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 798
    .local v5, "list":Ljava/util/LinkedList;
    sget-object v16, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->profileUuids:[Ljava/lang/String;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_a5
    move/from16 v0, v17

    if-ge v13, v0, :cond_82

    aget-object v11, v16, v13

    .line 800
    .local v11, "uuid":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_2fc

    :cond_b3
    :goto_b3
    packed-switch v12, :pswitch_data_352

    goto/16 :goto_14

    .line 802
    :pswitch_b8
    invoke-static {}, Lcom/delan/app/germanybluetooth/bean/chars/Time;->getBytes()[B

    move-result-object v10

    .line 868
    .local v10, "rawValue":[B
    :goto_bc
    new-instance v12, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1, v11, v10}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;[B)V

    invoke-virtual {v5, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_a5

    .line 800
    .end local v10    # "rawValue":[B
    :sswitch_ca
    const-string v18, "47e9ef01-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x0

    goto :goto_b3

    :sswitch_d6
    const-string v18, "47e9ef02-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x1

    goto :goto_b3

    :sswitch_e2
    const-string v18, "47e9ef03-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x2

    goto :goto_b3

    :sswitch_ee
    const-string v18, "47e9ef04-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x3

    goto :goto_b3

    :sswitch_fa
    const-string v18, "47e9ef05-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x4

    goto :goto_b3

    :sswitch_106
    const-string v18, "47e9ef06-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x5

    goto :goto_b3

    :sswitch_112
    const-string v18, "47e9ef07-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x6

    goto :goto_b3

    :sswitch_11e
    const-string v18, "47e9ef08-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/4 v12, 0x7

    goto :goto_b3

    :sswitch_12a
    const-string v18, "47e9ef10-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0x8

    goto/16 :goto_b3

    :sswitch_138
    const-string v18, "47e9ef11-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0x9

    goto/16 :goto_b3

    :sswitch_146
    const-string v18, "47e9ef12-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0xa

    goto/16 :goto_b3

    :sswitch_154
    const-string v18, "47e9ef13-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0xb

    goto/16 :goto_b3

    :sswitch_162
    const-string v18, "47e9ef14-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0xc

    goto/16 :goto_b3

    :sswitch_170
    const-string v18, "47e9ef15-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0xd

    goto/16 :goto_b3

    :sswitch_17e
    const-string v18, "47e9ef20-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0xe

    goto/16 :goto_b3

    :sswitch_18c
    const-string v18, "47e9ef30-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0xf

    goto/16 :goto_b3

    :sswitch_19a
    const-string v18, "47e9ef31-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0x10

    goto/16 :goto_b3

    :sswitch_1a8
    const-string v18, "47e9ef32-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0x11

    goto/16 :goto_b3

    :sswitch_1b6
    const-string v18, "47e9ef3e-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0x12

    goto/16 :goto_b3

    :sswitch_1c4
    const-string v18, "47e9ef3f-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0x13

    goto/16 :goto_b3

    :sswitch_1d2
    const-string v18, "47e9ef41-47e9-11e4-8939-164230d1df67"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b3

    const/16 v12, 0x14

    goto/16 :goto_b3

    .line 805
    :pswitch_1e0
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v10

    .line 806
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 808
    .end local v10    # "rawValue":[B
    :pswitch_1e8
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v10

    .line 809
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 811
    .end local v10    # "rawValue":[B
    :pswitch_1f0
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v10

    .line 812
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 814
    .end local v10    # "rawValue":[B
    :pswitch_1f8
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v10

    .line 815
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 817
    .end local v10    # "rawValue":[B
    :pswitch_200
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v10

    .line 818
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 820
    .end local v10    # "rawValue":[B
    :pswitch_208
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v10

    .line 821
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 823
    .end local v10    # "rawValue":[B
    :pswitch_210
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v10

    .line 824
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 826
    .end local v10    # "rawValue":[B
    :pswitch_218
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v10

    .line 827
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 829
    .end local v10    # "rawValue":[B
    :pswitch_220
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v10

    .line 830
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 832
    .end local v10    # "rawValue":[B
    :pswitch_228
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v10

    .line 833
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 835
    .end local v10    # "rawValue":[B
    :pswitch_230
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v10

    .line 836
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 838
    .end local v10    # "rawValue":[B
    :pswitch_238
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v10

    .line 839
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 841
    .end local v10    # "rawValue":[B
    :pswitch_240
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v10

    .line 842
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 844
    .end local v10    # "rawValue":[B
    :pswitch_248
    iget-object v12, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mFlag:Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

    invoke-virtual {v12}, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->getBytes()[B

    move-result-object v10

    .line 845
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 847
    .end local v10    # "rawValue":[B
    :pswitch_250
    const/4 v12, 0x1

    new-array v10, v12, [B

    const/4 v12, 0x0

    iget-byte v0, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->savingTemperature:B

    move/from16 v18, v0

    aput-byte v18, v10, v12

    .line 848
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 850
    .end local v10    # "rawValue":[B
    :pswitch_25c
    const/4 v12, 0x1

    new-array v10, v12, [B

    const/4 v12, 0x0

    iget-byte v0, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->heatingTmperature:B

    move/from16 v18, v0

    aput-byte v18, v10, v12

    .line 851
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 853
    .end local v10    # "rawValue":[B
    :pswitch_268
    const/4 v12, 0x1

    new-array v10, v12, [B

    const/4 v12, 0x0

    iget-byte v0, v3, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->offset:B

    move/from16 v18, v0

    aput-byte v18, v10, v12

    .line 854
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 856
    .end local v10    # "rawValue":[B
    :pswitch_274
    const/4 v12, 0x1

    new-array v10, v12, [B

    const/4 v12, 0x0

    aput-byte p2, v10, v12

    .line 857
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 859
    .end local v10    # "rawValue":[B
    :pswitch_27c
    const/4 v12, 0x1

    new-array v10, v12, [B

    const/4 v12, 0x0

    int-to-byte v0, v8

    move/from16 v18, v0

    aput-byte v18, v10, v12

    .line 860
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 862
    .end local v10    # "rawValue":[B
    :pswitch_287
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 863
    .local v9, "random":Ljava/util/Random;
    const/4 v12, 0x1

    new-array v10, v12, [B

    const/4 v12, 0x0

    const/16 v18, 0x100

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v10, v12

    .line 864
    .restart local v10    # "rawValue":[B
    goto/16 :goto_bc

    .line 873
    .end local v1    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v3    # "chars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    .end local v5    # "list":Ljava/util/LinkedList;
    .end local v8    # "profileIndex":I
    .end local v9    # "random":Ljava/util/Random;
    .end local v10    # "rawValue":[B
    .end local v11    # "uuid":Ljava/lang/String;
    :cond_2a1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2a5
    :goto_2a5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 874
    .restart local v1    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 875
    .restart local v5    # "list":Ljava/util/LinkedList;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;

    .line 876
    .local v7, "params":Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;
    iget-object v13, v7, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v13}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getCharacter(Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 877
    .local v2, "character":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v2, :cond_2a5

    .line 879
    iget-object v13, v7, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->rawValue:[B

    invoke-virtual {v2, v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 880
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->rawWriteDataToCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 882
    new-instance v13, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;

    const-string v14, "47e9ef41-47e9-11e4-8939-164230d1df67"

    const/4 v15, 0x1

    new-array v15, v15, [B

    const/16 v16, 0x0

    new-instance v17, Ljava/util/Random;

    invoke-direct/range {v17 .. v17}, Ljava/util/Random;-><init>()V

    const/16 v18, 0x100

    invoke-virtual/range {v17 .. v18}, Ljava/util/Random;->nextInt(I)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v1, v14, v15}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;[B)V

    invoke-virtual {v5, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2a5

    .line 800
    :sswitch_data_2fc
    .sparse-switch
        -0x731b84a4 -> :sswitch_e2
        -0x726ed905 -> :sswitch_154
        -0x5f7ae095 -> :sswitch_1b6
        -0x49cba023 -> :sswitch_ee
        -0x491ef484 -> :sswitch_162
        -0x362afc14 -> :sswitch_1c4
        -0x207bbba2 -> :sswitch_fa
        -0x1fcf1003 -> :sswitch_170
        0x8d428df -> :sswitch_106
        0x11a17978 -> :sswitch_12a
        0x124e2517 -> :sswitch_17e
        0x12fad0b6 -> :sswitch_18c
        0x32240d60 -> :sswitch_112
        0x3a44b25a -> :sswitch_ca
        0x3af15df9 -> :sswitch_138
        0x3c4ab537 -> :sswitch_19a
        0x3cf760d6 -> :sswitch_1d2
        0x5b73f1e1 -> :sswitch_11e
        0x639496db -> :sswitch_d6
        0x6441427a -> :sswitch_146
        0x659a99b8 -> :sswitch_1a8
    .end sparse-switch

    :pswitch_data_352
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_1e0
        :pswitch_1e8
        :pswitch_1f0
        :pswitch_1f8
        :pswitch_200
        :pswitch_208
        :pswitch_210
        :pswitch_218
        :pswitch_220
        :pswitch_228
        :pswitch_230
        :pswitch_238
        :pswitch_240
        :pswitch_248
        :pswitch_250
        :pswitch_25c
        :pswitch_268
        :pswitch_274
        :pswitch_27c
        :pswitch_287
    .end packed-switch
.end method

.method private startDelayThread()V
    .registers 3

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->isRunning:Z

    .line 566
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$4;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 769
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Z
    .registers 7
    .param p1, "ble"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 148
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connectBleTimeout:Ljava/lang/Runnable;

    .line 162
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connectBleTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1838

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    return v0
.end method

.method public getBleWrapper()Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    return-object v0
.end method

.method public initBleWrapper()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    .line 125
    :cond_b
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->onCreate()V

    .line 110
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->startDelayThread()V

    .line 111
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->isRunning:Z

    .line 118
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->onDestroy()V

    .line 119
    return-void
.end method

.method public rawRequestRead(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v3, 0x0

    .line 474
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    iget-object v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->requestCharacteristicValue(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 475
    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->releaseReadWrite()V

    .line 476
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiCallBack:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    if-eqz v0, :cond_17

    .line 477
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiCallBack:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    invoke-interface {v0, p1, p2, v3}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiReadWriteCharacteristicError(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 481
    :cond_17
    :goto_17
    return-void

    .line 479
    :cond_18
    const-string v0, "%s rawRequestRead %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public rawWriteDataToCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v4, 0x1

    .line 484
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    iget-object v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->writeDataToCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 485
    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->releaseReadWrite()V

    .line 486
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiCallBack:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    if-eqz v0, :cond_17

    .line 487
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiCallBack:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    invoke-interface {v0, p1, p2, v4}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiReadWriteCharacteristicError(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 494
    :cond_17
    :goto_17
    return-void

    .line 491
    :cond_18
    const-string v0, "%s rawWriteDataToChar %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    goto :goto_17
.end method

.method public readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V
    .registers 5
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 276
    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 283
    :cond_c
    :goto_c
    return-void

    .line 279
    :cond_d
    invoke-virtual {p1, p2}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getCharacter(Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 280
    .local v0, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_c

    .line 282
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readWriteCharacter(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    goto :goto_c
.end method

.method public readCharacteristic(Ljava/lang/String;)V
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->getDeviceTypeFromChar(Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "deviceType":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 294
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 295
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_33

    .line 306
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_1b
    :goto_1b
    return-void

    .line 298
    :cond_1c
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b

    .line 299
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 300
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1b

    .line 305
    :cond_33
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {p0, v2, p1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public saveProfile(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    .local p1, "selectedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_11

    .line 779
    :cond_10
    :goto_10
    return-void

    .line 774
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 775
    .local v0, "progmaticCharsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 776
    .local v1, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 778
    .end local v1    # "s":Ljava/lang/String;
    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-byte v2, v2

    invoke-direct {p0, v0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->saveProfile(Ljava/util/ArrayList;B)V

    goto :goto_10
.end method

.method public scan()V
    .registers 3

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mScanning:Z

    .line 176
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->addScanningTimeout()V

    .line 177
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x47

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->startScanning()V

    .line 179
    return-void
.end method

.method public setCurrentRoom(Lcom/delan/app/germanybluetooth/bean/RoomBean;)V
    .registers 2
    .param p1, "room"    # Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 145
    return-void
.end method

.method public setUiCallBackAndUiHandler(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;Landroid/os/Handler;)V
    .registers 4
    .param p1, "uiCallBack"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    if-eqz v0, :cond_b

    .line 139
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiCallBack:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->setUiCallBack(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;)V

    .line 140
    :cond_b
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method public stopScanning(Z)V
    .registers 4
    .param p1, "sendScanHasStopMsg"    # Z

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mScanning:Z

    if-eqz v0, :cond_3c

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mScanning:Z

    .line 205
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    if-eqz v0, :cond_15

    .line 206
    const-string v0, "mBleWrapper.stopScanning()"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mBleWrapper:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->stopScanning()V

    .line 209
    :cond_15
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3c

    .line 210
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->scanningTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_24

    .line 211
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->scanningTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    :cond_24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 213
    if-eqz p1, :cond_3c

    .line 214
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->uiHandler:Landroid/os/Handler;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :cond_3c
    return-void
.end method

.method public writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V
    .registers 15
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    const/4 v6, -0x1

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 315
    if-eqz p1, :cond_11

    iget-object v11, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v11, :cond_11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 445
    :cond_11
    :goto_11
    return-void

    .line 317
    :cond_12
    invoke-virtual {p1, p2}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getCharacter(Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 318
    .local v0, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-eqz v0, :cond_11

    .line 320
    new-array v5, v7, [B

    .line 321
    .local v5, "rawValue":[B
    invoke-static {p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->getDeviceTypeFromChar(Ljava/lang/String;)I

    move-result v2

    .line 322
    .local v2, "deviceType":I
    if-ne v2, v8, :cond_1c1

    .line 323
    iget-object v11, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v11, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    .line 324
    .local v1, "cometValues":Lcom/delan/app/germanybluetooth/bean/CometChars;
    if-eqz v1, :cond_11

    .line 327
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2c2

    :cond_2d
    :goto_2d
    packed-switch v6, :pswitch_data_318

    .line 441
    .end local v1    # "cometValues":Lcom/delan/app/germanybluetooth/bean/CometChars;
    :cond_30
    :goto_30
    :pswitch_30
    if-eqz v5, :cond_11

    array-length v6, v5

    if-lez v6, :cond_11

    .line 442
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 443
    invoke-direct {p0, p1, v0, v8}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readWriteCharacter(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    goto :goto_11

    .line 327
    .restart local v1    # "cometValues":Lcom/delan/app/germanybluetooth/bean/CometChars;
    :sswitch_3c
    const-string v9, "47e9ee01-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    move v6, v7

    goto :goto_2d

    :sswitch_46
    const-string v7, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    move v6, v8

    goto :goto_2d

    :sswitch_50
    const-string v7, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    move v6, v9

    goto :goto_2d

    :sswitch_5a
    const-string v7, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    move v6, v10

    goto :goto_2d

    :sswitch_64
    const-string v7, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x4

    goto :goto_2d

    :sswitch_6e
    const-string v7, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x5

    goto :goto_2d

    :sswitch_78
    const-string v7, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x6

    goto :goto_2d

    :sswitch_82
    const-string v7, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v6, 0x7

    goto :goto_2d

    :sswitch_8c
    const-string v7, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x8

    goto :goto_2d

    :sswitch_97
    const-string v7, "47e9ee21-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x9

    goto :goto_2d

    :sswitch_a2
    const-string v7, "47e9ee22-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xa

    goto :goto_2d

    :sswitch_ad
    const-string v7, "47e9ee23-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xb

    goto/16 :goto_2d

    :sswitch_b9
    const-string v7, "47e9ee24-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xc

    goto/16 :goto_2d

    :sswitch_c5
    const-string v7, "47e9ee25-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xd

    goto/16 :goto_2d

    :sswitch_d1
    const-string v7, "47e9ee26-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xe

    goto/16 :goto_2d

    :sswitch_dd
    const-string v7, "47e9ee27-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0xf

    goto/16 :goto_2d

    :sswitch_e9
    const-string v7, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x10

    goto/16 :goto_2d

    :sswitch_f5
    const-string v7, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x11

    goto/16 :goto_2d

    :sswitch_101
    const-string v7, "47e9ee2e-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x12

    goto/16 :goto_2d

    :sswitch_10d
    const-string v7, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x13

    goto/16 :goto_2d

    :sswitch_119
    const-string v7, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/16 v6, 0x14

    goto/16 :goto_2d

    .line 329
    :pswitch_125
    invoke-static {}, Lcom/delan/app/germanybluetooth/bean/chars/Time;->getBytes()[B

    move-result-object v5

    .line 330
    goto/16 :goto_30

    .line 332
    :pswitch_12b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->getBytes()[B

    move-result-object v5

    .line 333
    goto/16 :goto_30

    .line 335
    :pswitch_133
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->getBytes()[B

    move-result-object v5

    .line 336
    goto/16 :goto_30

    .line 338
    :pswitch_13b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->getBytes()[B

    move-result-object v5

    .line 339
    goto/16 :goto_30

    .line 341
    :pswitch_143
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->getBytes()[B

    move-result-object v5

    .line 342
    goto/16 :goto_30

    .line 344
    :pswitch_14b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->getBytes()[B

    move-result-object v5

    .line 345
    goto/16 :goto_30

    .line 347
    :pswitch_153
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->getBytes()[B

    move-result-object v5

    .line 348
    goto/16 :goto_30

    .line 350
    :pswitch_15b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->getBytes()[B

    move-result-object v5

    .line 351
    goto/16 :goto_30

    .line 353
    :pswitch_163
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 354
    goto/16 :goto_30

    .line 356
    :pswitch_16b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 357
    goto/16 :goto_30

    .line 359
    :pswitch_173
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 360
    goto/16 :goto_30

    .line 362
    :pswitch_17b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 363
    goto/16 :goto_30

    .line 365
    :pswitch_183
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 366
    goto/16 :goto_30

    .line 368
    :pswitch_18b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 369
    goto/16 :goto_30

    .line 371
    :pswitch_193
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday7:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 372
    goto/16 :goto_30

    .line 374
    :pswitch_19b
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday8:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getBytes()[B

    move-result-object v5

    .line 375
    goto/16 :goto_30

    .line 377
    :pswitch_1a3
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->getBytes()[B

    move-result-object v5

    .line 378
    goto/16 :goto_30

    .line 380
    :pswitch_1ab
    iget-object v6, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->getBytes()[B

    move-result-object v5

    .line 381
    goto/16 :goto_30

    .line 385
    :pswitch_1b3
    iget v6, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    invoke-static {v6}, Lutils/NumberConvert;->int2Bytes(I)[B

    move-result-object v5

    .line 386
    goto/16 :goto_30

    .line 388
    :pswitch_1bb
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    goto/16 :goto_30

    .line 391
    .end local v1    # "cometValues":Lcom/delan/app/germanybluetooth/bean/CometChars;
    :cond_1c1
    if-ne v2, v9, :cond_30

    .line 392
    iget-object v11, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v3, v11, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    .line 393
    .local v3, "progtimeValues":Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;
    if-eqz v3, :cond_11

    .line 396
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_346

    :cond_1d0
    :goto_1d0
    packed-switch v6, :pswitch_data_374

    goto/16 :goto_30

    .line 398
    :pswitch_1d5
    invoke-static {}, Lcom/delan/app/germanybluetooth/bean/chars/Time;->getBytes()[B

    move-result-object v5

    .line 399
    goto/16 :goto_30

    .line 396
    :sswitch_1db
    const-string v9, "47e9ef51-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    move v6, v7

    goto :goto_1d0

    :sswitch_1e5
    const-string v9, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    move v6, v8

    goto :goto_1d0

    :sswitch_1ef
    const-string v10, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d0

    move v6, v9

    goto :goto_1d0

    :sswitch_1f9
    const-string v9, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    move v6, v10

    goto :goto_1d0

    :sswitch_203
    const-string v9, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const/4 v6, 0x4

    goto :goto_1d0

    :sswitch_20d
    const-string v9, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const/4 v6, 0x5

    goto :goto_1d0

    :sswitch_217
    const-string v9, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const/4 v6, 0x6

    goto :goto_1d0

    :sswitch_221
    const-string v9, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const/4 v6, 0x7

    goto :goto_1d0

    :sswitch_22b
    const-string v9, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const/16 v6, 0x8

    goto :goto_1d0

    :sswitch_236
    const-string v9, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const/16 v6, 0x9

    goto :goto_1d0

    :sswitch_241
    const-string v9, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d0

    const/16 v6, 0xa

    goto :goto_1d0

    .line 401
    :pswitch_24c
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    if-eqz v6, :cond_30

    .line 402
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v5

    goto/16 :goto_30

    .line 405
    :pswitch_258
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    if-eqz v6, :cond_30

    .line 406
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v5

    goto/16 :goto_30

    .line 409
    :pswitch_264
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    if-eqz v6, :cond_30

    .line 410
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v5

    goto/16 :goto_30

    .line 413
    :pswitch_270
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    if-eqz v6, :cond_30

    .line 414
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v5

    goto/16 :goto_30

    .line 417
    :pswitch_27c
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    if-eqz v6, :cond_30

    .line 418
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v5

    goto/16 :goto_30

    .line 421
    :pswitch_288
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    if-eqz v6, :cond_30

    .line 422
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v5

    goto/16 :goto_30

    .line 425
    :pswitch_294
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    if-eqz v6, :cond_30

    .line 426
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->getBytes()[B

    move-result-object v5

    goto/16 :goto_30

    .line 429
    :pswitch_2a0
    iget-object v6, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->getBytes()[B

    move-result-object v5

    .line 430
    goto/16 :goto_30

    .line 432
    :pswitch_2a8
    iget v6, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    invoke-static {v6}, Lutils/NumberConvert;->int2Bytes(I)[B

    move-result-object v5

    .line 433
    goto/16 :goto_30

    .line 435
    :pswitch_2b0
    new-array v5, v8, [B

    .line 436
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 437
    .local v4, "random":Ljava/util/Random;
    const/16 v6, 0x100

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    goto/16 :goto_30

    .line 327
    :sswitch_data_2c2
    .sparse-switch
        -0x75105475 -> :sswitch_101
        -0x5e07bcc5 -> :sswitch_6e
        -0x5d5b1126 -> :sswitch_b9
        -0x34b7d844 -> :sswitch_78
        -0x340b2ca5 -> :sswitch_c5
        -0x1a4fe679 -> :sswitch_e9
        -0xb67f3c3 -> :sswitch_82
        -0xabb4824 -> :sswitch_d1
        -0x3474ec9 -> :sswitch_46
        -0x29aa32a -> :sswitch_8c
        -0x1edf78b -> :sswitch_10d
        -0x1414bec -> :sswitch_119
        0xefffe08 -> :sswitch_f5
        0x1e949c5d -> :sswitch_dd
        0x255bea19 -> :sswitch_3c
        0x260895b8 -> :sswitch_50
        0x26b54157 -> :sswitch_97
        0x4f587a39 -> :sswitch_5a
        0x500525d8 -> :sswitch_a2
        0x78a85eba -> :sswitch_64
        0x79550a59 -> :sswitch_ad
    .end sparse-switch

    :pswitch_data_318
    .packed-switch 0x0
        :pswitch_125
        :pswitch_12b
        :pswitch_133
        :pswitch_13b
        :pswitch_143
        :pswitch_14b
        :pswitch_153
        :pswitch_15b
        :pswitch_163
        :pswitch_16b
        :pswitch_173
        :pswitch_17b
        :pswitch_183
        :pswitch_18b
        :pswitch_193
        :pswitch_19b
        :pswitch_1a3
        :pswitch_1ab
        :pswitch_30
        :pswitch_1b3
        :pswitch_1bb
    .end packed-switch

    .line 396
    :sswitch_data_346
    .sparse-switch
        -0x77dccf83 -> :sswitch_22b
        -0x6fbc2a89 -> :sswitch_1ef
        -0x466c4608 -> :sswitch_1f9
        -0x1d1c6187 -> :sswitch_203
        0xc3382fa -> :sswitch_20d
        0x3583677b -> :sswitch_217
        0x3da40c75 -> :sswitch_1db
        0x3e50b814 -> :sswitch_241
        0x5ed34bfc -> :sswitch_221
        0x66f3f0f6 -> :sswitch_1e5
        0x67a09c95 -> :sswitch_236
    .end sparse-switch

    :pswitch_data_374
    .packed-switch 0x0
        :pswitch_1d5
        :pswitch_24c
        :pswitch_258
        :pswitch_264
        :pswitch_270
        :pswitch_27c
        :pswitch_288
        :pswitch_294
        :pswitch_2a0
        :pswitch_2a8
        :pswitch_2b0
    .end packed-switch
.end method

.method public writeCharacteristic(Ljava/lang/String;)V
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->getDeviceTypeFromChar(Ljava/lang/String;)I

    move-result v1

    .line 455
    .local v1, "deviceType":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1c

    .line 456
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 457
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_33

    .line 471
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_1b
    return-void

    .line 461
    :cond_1c
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1b

    .line 462
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 463
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 468
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 469
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {p0, v0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_37
.end method

.method public writeCharacteristicWithDelay(Ljava/lang/String;)V
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 502
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_12a

    :cond_b
    :goto_b
    packed-switch v0, :pswitch_data_178

    .line 561
    :goto_e
    return-void

    .line 502
    :sswitch_f
    const-string v3, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x0

    goto :goto_b

    :sswitch_19
    const-string v3, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :sswitch_23
    const-string v3, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v1

    goto :goto_b

    :sswitch_2d
    const-string v3, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x3

    goto :goto_b

    :sswitch_37
    const-string v3, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x4

    goto :goto_b

    :sswitch_41
    const-string v3, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x5

    goto :goto_b

    :sswitch_4b
    const-string v3, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x6

    goto :goto_b

    :sswitch_55
    const-string v3, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x7

    goto :goto_b

    :sswitch_5f
    const-string v3, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0x8

    goto :goto_b

    :sswitch_6a
    const-string v3, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0x9

    goto :goto_b

    :sswitch_75
    const-string v3, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v0, v2

    goto :goto_b

    :sswitch_7f
    const-string v3, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0xb

    goto :goto_b

    :sswitch_8a
    const-string v3, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0xc

    goto/16 :goto_b

    :sswitch_96
    const-string v3, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0xd

    goto/16 :goto_b

    :sswitch_a2
    const-string v3, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0xe

    goto/16 :goto_b

    :sswitch_ae
    const-string v3, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0xf

    goto/16 :goto_b

    :sswitch_ba
    const-string v3, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0x10

    goto/16 :goto_b

    :sswitch_c6
    const-string v3, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0x11

    goto/16 :goto_b

    :sswitch_d2
    const-string v3, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0x12

    goto/16 :goto_b

    .line 504
    :pswitch_de
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointMondayDelay:I

    goto/16 :goto_e

    .line 507
    :pswitch_e2
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointTuesdayDelay:I

    goto/16 :goto_e

    .line 510
    :pswitch_e6
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointWednesdayDelay:I

    goto/16 :goto_e

    .line 513
    :pswitch_ea
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointThursdayDelay:I

    goto/16 :goto_e

    .line 516
    :pswitch_ee
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointFridayDelay:I

    goto/16 :goto_e

    .line 519
    :pswitch_f2
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSaturdayDelay:I

    goto/16 :goto_e

    .line 522
    :pswitch_f6
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometSwitchPointSundayDelay:I

    goto/16 :goto_e

    .line 525
    :pswitch_fa
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometHoliday1Delay:I

    goto/16 :goto_e

    .line 528
    :pswitch_fe
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometFlagsDelay:I

    goto/16 :goto_e

    .line 531
    :pswitch_102
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mCometTemperatureDelay:I

    goto/16 :goto_e

    .line 534
    :pswitch_106
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_mondayDelay:I

    goto/16 :goto_e

    .line 537
    :pswitch_10a
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_tuesdayDelay:I

    goto/16 :goto_e

    .line 540
    :pswitch_10e
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_wednesdayDelay:I

    goto/16 :goto_e

    .line 543
    :pswitch_112
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_thursdayDelay:I

    goto/16 :goto_e

    .line 546
    :pswitch_116
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_fridayDelay:I

    goto/16 :goto_e

    .line 549
    :pswitch_11a
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_saturdayDelay:I

    goto/16 :goto_e

    .line 552
    :pswitch_11e
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_switch_point_sundayDelay:I

    goto/16 :goto_e

    .line 555
    :pswitch_122
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_flagsDelay:I

    goto/16 :goto_e

    .line 558
    :pswitch_126
    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->mProgtime_start_datentransfer:I

    goto/16 :goto_e

    .line 502
    :sswitch_data_12a
    .sparse-switch
        -0x77dccf83 -> :sswitch_c6
        -0x6fbc2a89 -> :sswitch_7f
        -0x5e07bcc5 -> :sswitch_37
        -0x466c4608 -> :sswitch_8a
        -0x34b7d844 -> :sswitch_41
        -0x1d1c6187 -> :sswitch_96
        -0x1a4fe679 -> :sswitch_5f
        -0xb67f3c3 -> :sswitch_4b
        -0x3474ec9 -> :sswitch_f
        -0x29aa32a -> :sswitch_55
        0xc3382fa -> :sswitch_a2
        0xefffe08 -> :sswitch_6a
        0x260895b8 -> :sswitch_19
        0x3583677b -> :sswitch_ae
        0x3e50b814 -> :sswitch_d2
        0x4f587a39 -> :sswitch_23
        0x5ed34bfc -> :sswitch_ba
        0x66f3f0f6 -> :sswitch_75
        0x78a85eba -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_de
        :pswitch_e2
        :pswitch_e6
        :pswitch_ea
        :pswitch_ee
        :pswitch_f2
        :pswitch_f6
        :pswitch_fa
        :pswitch_fe
        :pswitch_102
        :pswitch_106
        :pswitch_10a
        :pswitch_10e
        :pswitch_112
        :pswitch_116
        :pswitch_11a
        :pswitch_11e
        :pswitch_122
        :pswitch_126
    .end packed-switch
.end method

.method public writeNextCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 7
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .prologue
    .line 887
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 896
    :cond_c
    :goto_c
    return-void

    .line 889
    :cond_d
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->toSaveProfiles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 890
    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;>;"
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_c

    .line 892
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;

    .line 893
    .local v2, "params":Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;
    iget-object v3, v2, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getCharacter(Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 894
    .local v0, "character":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v3, v2, Lcom/delan/app/germanybluetooth/bluetooth/BleService$writeCharParas;->rawValue:[B

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 895
    invoke-virtual {p0, p1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->rawWriteDataToCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_c
.end method
