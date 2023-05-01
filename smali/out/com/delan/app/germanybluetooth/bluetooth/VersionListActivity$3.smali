.class Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$3;
.super Ljava/lang/Object;
.source "VersionListActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 1

    .prologue
    .line 392
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 383
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .local v1, "roomName":Ljava/lang/String;
    move-object v0, p2

    .line 384
    check-cast v0, Ljava/lang/String;

    .line 385
    .local v0, "deviceAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 386
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v2, v1, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->updateRecord(Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    .line 387
    :cond_21
    return-void
.end method
