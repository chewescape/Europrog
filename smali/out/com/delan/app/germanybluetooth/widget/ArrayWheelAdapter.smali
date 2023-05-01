.class public Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;
.super Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;
.source "ArrayWheelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;"
    }
.end annotation


# instance fields
.field private items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;, "Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter<TT;>;"
    .local p2, "items":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 43
    .local p0, "this":Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;, "Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter<TT;>;"
    if-ltz p1, :cond_17

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v1, v1

    if-ge p1, v1, :cond_17

    .line 44
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 45
    .local v0, "item":Ljava/lang/Object;, "TT;"
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_12

    .line 46
    check-cast v0, Ljava/lang/CharSequence;

    .line 50
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :goto_11
    return-object v0

    .line 48
    .restart local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 50
    .end local v0    # "item":Ljava/lang/Object;, "TT;"
    :cond_17
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getItemsCount()I
    .registers 2

    .prologue
    .line 55
    .local p0, "this":Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;, "Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
