.class Lcom/delan/app/germanybluetooth/MyApplication$1;
.super Ljava/lang/Object;
.source "MyApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/MyApplication;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/MyApplication;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/MyApplication;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/MyApplication$1;->this$0:Lcom/delan/app/germanybluetooth/MyApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/MyApplication$1;->this$0:Lcom/delan/app/germanybluetooth/MyApplication;

    check-cast p2, Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService$BleBinder;->getService()Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 88
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 93
    const-string v0, "onServiceDisconnected"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/idelan/app/Util/AppManager;->getAppManager()Lcom/idelan/app/Util/AppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/MyApplication$1;->this$0:Lcom/delan/app/germanybluetooth/MyApplication;

    invoke-virtual {v0, v1}, Lcom/idelan/app/Util/AppManager;->AppExit(Landroid/content/Context;)V

    .line 95
    return-void
.end method
