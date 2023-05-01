.class public Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectRoomDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->list:Ljava/util/List;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->selectedPosition:I

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method

.method private initializeViews(Ljava/lang/String;ZLcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "checked"    # Z
    .param p3, "holder"    # Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;

    .prologue
    .line 65
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;->roomTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;->checkedCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_6

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_6

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-nez p2, :cond_14

    .line 56
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :cond_14
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->selectedPosition:I

    if-ne v0, p1, :cond_28

    const/4 v0, 0x1

    move v1, v0

    :goto_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;

    invoke-direct {p0, v2, v1, v0}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->initializeViews(Ljava/lang/String;ZLcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter$ViewHolder;)V

    .line 60
    return-object p2

    .line 59
    :cond_28
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1e
.end method

.method public notifyData(Ljava/util/List;I)V
    .registers 3
    .param p2, "selectedPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->list:Ljava/util/List;

    .line 29
    iput p2, p0, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->selectedPosition:I

    .line 30
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method
