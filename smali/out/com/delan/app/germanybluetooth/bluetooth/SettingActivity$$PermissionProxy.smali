.class public Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$$PermissionProxy;
.super Ljava/lang/Object;
.source "SettingActivity$$PermissionProxy.java"

# interfaces
.implements Lcom/zhy/m/permission/PermissionProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/zhy/m/permission/PermissionProxy",
        "<",
        "Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public denied(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)V
    .registers 3
    .param p1, "source"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
    .param p2, "requestCode"    # I

    .prologue
    .line 12
    packed-switch p2, :pswitch_data_8

    :goto_3
    return-void

    :pswitch_4
    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->requestCoarseLocationFailed()V

    goto :goto_3

    :pswitch_data_8
    .packed-switch 0x53
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic denied(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 6
    check-cast p1, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-virtual {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$$PermissionProxy;->denied(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)V

    return-void
.end method

.method public grant(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)V
    .registers 3
    .param p1, "source"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
    .param p2, "requestCode"    # I

    .prologue
    .line 9
    packed-switch p2, :pswitch_data_8

    :goto_3
    return-void

    :pswitch_4
    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->requestCoarseLocationSuccess()V

    goto :goto_3

    :pswitch_data_8
    .packed-switch 0x53
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic grant(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 6
    check-cast p1, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-virtual {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$$PermissionProxy;->grant(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)V

    return-void
.end method

.method public needShowRationale(I)Z
    .registers 3
    .param p1, "requestCode"    # I

    .prologue
    .line 18
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public rationale(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)V
    .registers 3
    .param p1, "source"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
    .param p2, "requestCode"    # I

    .prologue
    .line 15
    return-void
.end method

.method public bridge synthetic rationale(Ljava/lang/Object;I)V
    .registers 3

    .prologue
    .line 6
    check-cast p1, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-virtual {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$$PermissionProxy;->rationale(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)V

    return-void
.end method
