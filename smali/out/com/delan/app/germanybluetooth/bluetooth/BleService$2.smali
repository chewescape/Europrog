.class Lcom/delan/app/germanybluetooth/bluetooth/BleService$2;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/BleService;->addScanningTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 188
    const-string v0, "ScanningTimeout"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->stopScanning(Z)V

    .line 191
    return-void
.end method
