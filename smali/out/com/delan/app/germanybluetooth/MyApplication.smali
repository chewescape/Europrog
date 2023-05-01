.class public Lcom/delan/app/germanybluetooth/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static instance:Lcom/delan/app/germanybluetooth/MyApplication;


# instance fields
.field public bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

.field private conn:Landroid/content/ServiceConnection;

.field public isSamsung:Z

.field public isSamsungS5:Z

.field public mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

.field public mCustomCrashHandler:Lcom/idelan/app/crash/CustomCrashHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/MyApplication;->isSamsung:Z

    .line 31
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/MyApplication;->isSamsungS5:Z

    .line 84
    new-instance v0, Lcom/delan/app/germanybluetooth/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/MyApplication$1;-><init>(Lcom/delan/app/germanybluetooth/MyApplication;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/MyApplication;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method private getDeviceScreen()V
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 74
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 75
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/delan/app/germanybluetooth/config/Common;->DEVICE_SCREEN_WIDTH:I

    .line 76
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/delan/app/germanybluetooth/config/Common;->DEVICE_SCREEN_HEIGHT:I

    .line 77
    return-void
.end method


# virtual methods
.method initExceptionHandler()V
    .registers 2

    .prologue
    .line 81
    invoke-static {}, Lcom/idelan/app/crash/CustomCrashHandler;->getInstance()Lcom/idelan/app/crash/CustomCrashHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/MyApplication;->mCustomCrashHandler:Lcom/idelan/app/crash/CustomCrashHandler;

    .line 82
    return-void
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    sput-object p0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    .line 38
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/MyApplication;->initExceptionHandler()V

    .line 39
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/MyApplication;->getDeviceScreen()V

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/MyApplication;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v6, v4}, Lcom/delan/app/germanybluetooth/MyApplication;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 48
    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/SysIdleBroadCastReceiver;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bluetooth/SysIdleBroadCastReceiver;-><init>()V

    .line 49
    .local v3, "sysIdleBroadCastReceiver":Lcom/delan/app/germanybluetooth/bluetooth/SysIdleBroadCastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v3, v0}, Lcom/delan/app/germanybluetooth/MyApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/apkfuns/logutils/LogUtils;->getLogConfig()Lcom/apkfuns/logutils/LogConfig;

    move-result-object v6

    .line 54
    invoke-interface {v6, v4}, Lcom/apkfuns/logutils/LogConfig;->configAllowLog(Z)Lcom/apkfuns/logutils/LogConfig;

    move-result-object v6

    const-string v7, "LOG"

    .line 55
    invoke-interface {v6, v7}, Lcom/apkfuns/logutils/LogConfig;->configTagPrefix(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;

    move-result-object v6

    .line 56
    invoke-interface {v6, v4}, Lcom/apkfuns/logutils/LogConfig;->configShowBorders(Z)Lcom/apkfuns/logutils/LogConfig;

    move-result-object v6

    const-string v7, "%d{HH:mm:ss:SSS} %t %c{-5}"

    .line 57
    invoke-interface {v6, v7}, Lcom/apkfuns/logutils/LogConfig;->configFormatTag(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;

    move-result-object v6

    const/4 v7, 0x2

    .line 58
    invoke-interface {v6, v7}, Lcom/apkfuns/logutils/LogConfig;->configLevel(I)Lcom/apkfuns/logutils/LogConfig;

    .line 60
    const v6, 0x7f06002a

    invoke-virtual {p0, v6}, Lcom/delan/app/germanybluetooth/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/delan/app/germanybluetooth/MyApplication;->isSamsung:Z

    .line 61
    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "cat /sys/class/rfkill/rfkill0/name"

    aput-object v7, v6, v5

    invoke-static {v6, v5}, Lcom/idelan/java/Util/ShellUtils;->execCommand([Ljava/lang/String;Z)Lcom/idelan/java/Util/ShellUtils$CommandResult;

    move-result-object v2

    .line 62
    .local v2, "result":Lcom/idelan/java/Util/ShellUtils$CommandResult;
    iget-object v6, v2, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 64
    iget-object v6, v2, Lcom/idelan/java/Util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    const-string v7, "bcm43"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7f

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ne v6, v7, :cond_7f

    iget-boolean v6, p0, Lcom/delan/app/germanybluetooth/MyApplication;->isSamsung:Z

    if-eqz v6, :cond_7f

    :goto_7c
    iput-boolean v4, p0, Lcom/delan/app/germanybluetooth/MyApplication;->isSamsungS5:Z

    .line 66
    :cond_7e
    return-void

    :cond_7f
    move v4, v5

    .line 64
    goto :goto_7c
.end method
