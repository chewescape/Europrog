.class public Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;
.super Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;
.source "DeviceDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;,
        Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;,
        Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isOpen:Ljava/lang/Boolean;

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

.field private onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;

.field private roomBean:Lcom/delan/app/germanybluetooth/bean/RoomBean;

.field private swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

.field private widgetListener:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/delan/app/germanybluetooth/bean/RoomBean;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roomBean"    # Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->list:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->roomBean:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->isOpen:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$202(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;
    .param p1, "x1"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    return-object p1
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->widgetListener:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;

    return-object v0
.end method


# virtual methods
.method public closeMenu()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    if-eqz v0, :cond_9

    .line 70
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 71
    :cond_9
    return-void
.end method

.method public fillValues(ILandroid/view/View;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    .line 99
    .local v0, "holder":Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v2

    iget v2, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->battery:I

    if-ltz v2, :cond_41

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v2

    iget v1, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->battery:I

    .line 100
    .local v1, "i":I
    :goto_14
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->batteryTV:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->battery:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->modificationLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->deleteLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$2;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$3;

    invoke-direct {v3, p0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$3;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)V

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->addSwipeListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;)V

    .line 135
    return-void

    .line 99
    .end local v1    # "i":I
    :cond_41
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public generateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    if-nez p2, :cond_14

    .line 82
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :cond_14
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    invoke-virtual {p0, v1, p1, v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->initializeViews(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;ILcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;)V

    .line 86
    return-object p2
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    goto :goto_5
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSwipeLayoutResourceId(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 76
    const v0, 0x7f0d00ac

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    if-eqz p2, :cond_f

    .line 92
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    invoke-virtual {p0, v1, p1, v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->initializeViews(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;ILcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;)V

    .line 93
    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected initializeViews(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;ILcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;)V
    .registers 9
    .param p1, "device"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "position"    # I
    .param p3, "holder"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 149
    if-eqz p1, :cond_3f

    .line 151
    iget-boolean v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->connected:Z

    if-eqz v0, :cond_40

    .line 152
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->settingsColor:Landroid/widget/TextView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 157
    :goto_11
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->context:Landroid/content/Context;

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 160
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->time1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->battery:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 162
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->batteryTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->percentTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :goto_3d
    iput p2, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->position:I

    .line 173
    :cond_3f
    return-void

    .line 154
    :cond_40
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->settingsColor:Landroid/widget/TextView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_11

    .line 165
    :cond_49
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->time1:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->battery:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->batteryTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p3, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->percentTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3d
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
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
    .line 176
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->list:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method

.method public setOnRightMenuListener(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;)V
    .registers 2
    .param p1, "onRightMenuListener"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;

    .line 140
    return-void
.end method

.method public setOpen(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "isOpen"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->isOpen:Ljava/lang/Boolean;

    .line 66
    return-void
.end method

.method public setWidgetClickListener(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->widgetListener:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;

    .line 144
    return-void
.end method
