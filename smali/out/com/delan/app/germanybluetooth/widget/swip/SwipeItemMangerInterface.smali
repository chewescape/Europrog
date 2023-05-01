.class public interface abstract Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerInterface;
.super Ljava/lang/Object;
.source "SwipeItemMangerInterface.java"


# virtual methods
.method public abstract closeAllExcept(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
.end method

.method public abstract closeItem(I)V
.end method

.method public abstract getMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
.end method

.method public abstract getOpenItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOpenLayouts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isOpen(I)Z
.end method

.method public abstract openItem(I)V
.end method

.method public abstract removeShownLayouts(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
.end method

.method public abstract setMode(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;)V
.end method
