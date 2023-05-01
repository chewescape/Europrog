.class Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$3;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->startScanning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    const v1, 0x7f060052

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastLong(Landroid/content/Context;I)V

    .line 231
    return-void
.end method
