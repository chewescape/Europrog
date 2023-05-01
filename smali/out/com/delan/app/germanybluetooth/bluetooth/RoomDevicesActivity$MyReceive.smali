.class public Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;
.super Landroid/content/BroadcastReceiver;
.source "RoomDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->finish()V

    .line 77
    return-void
.end method
