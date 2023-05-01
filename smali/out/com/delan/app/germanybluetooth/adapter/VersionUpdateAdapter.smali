.class public Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;
.super Landroid/widget/BaseAdapter;
.source "VersionUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->list:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_14

    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :cond_14
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;

    invoke-virtual {p0, v1, p1, v0}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->initializeViews(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;ILcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;)V

    .line 55
    return-object p2
.end method

.method protected initializeViews(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;ILcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;)V
    .registers 6
    .param p1, "device"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "position"    # I
    .param p3, "holder"    # Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;

    .prologue
    .line 59
    if-eqz p1, :cond_15

    .line 60
    iget-boolean v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->connected:Z

    if-eqz v0, :cond_16

    .line 61
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;->settingsColor:Landroid/widget/TextView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 65
    :goto_e
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;->deviceTV:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_15
    return-void

    .line 63
    :cond_16
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter$ViewHolder;->settingsColor:Landroid/widget/TextView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_e
.end method

.method public removeItem(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 3
    .param p1, "selectedDevice"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 71
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 72
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->notifyDataSetChanged()V

    .line 74
    :cond_f
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->list:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method
