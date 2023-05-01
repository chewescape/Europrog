.class public abstract Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;
.super Ljava/lang/Object;
.source "AbstractWheelAdapter.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;


# instance fields
.field private dataSetObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyDataChangedEvent()V
    .registers 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 58
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 59
    .local v0, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_a

    .line 62
    .end local v0    # "observer":Landroid/database/DataSetObserver;
    :cond_1a
    return-void
.end method

.method protected notifyDataInvalidatedEvent()V
    .registers 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 69
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    .line 70
    .local v0, "observer":Landroid/database/DataSetObserver;
    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onInvalidated()V

    goto :goto_a

    .line 73
    .end local v0    # "observer":Landroid/database/DataSetObserver;
    :cond_1a
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    .line 43
    :cond_b
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/AbstractWheelAdapter;->dataSetObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    :cond_9
    return-void
.end method
