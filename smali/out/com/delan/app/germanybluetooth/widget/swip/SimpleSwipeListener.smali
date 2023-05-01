.class public Lcom/delan/app/germanybluetooth/widget/swip/SimpleSwipeListener;
.super Ljava/lang/Object;
.source "SimpleSwipeListener.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 20
    return-void
.end method

.method public onHandRelease(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 28
    return-void
.end method

.method public onOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 12
    return-void
.end method

.method public onStartClose(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 16
    return-void
.end method

.method public onStartOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 8
    return-void
.end method

.method public onUpdate(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;II)V
    .registers 4
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .param p2, "leftOffset"    # I
    .param p3, "topOffset"    # I

    .prologue
    .line 24
    return-void
.end method
