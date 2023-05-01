.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$3;
.super Lcom/delan/app/germanybluetooth/widget/swip/SimpleSwipeListener;
.source "ProgmaticDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->fillValues(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->access$602(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Z)Z

    .line 127
    return-void
.end method

.method public onOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->access$602(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Z)Z

    .line 121
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$3;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->access$702(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 122
    return-void
.end method
