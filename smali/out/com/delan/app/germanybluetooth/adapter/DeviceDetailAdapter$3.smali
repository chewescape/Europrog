.class Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$3;
.super Lcom/delan/app/germanybluetooth/widget/swip/SimpleSwipeListener;
.source "DeviceDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->fillValues(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->access$102(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 132
    return-void
.end method

.method public onOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->access$102(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 126
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->access$202(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 127
    return-void
.end method
