.class public Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;
.super Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;
.source "ProgmaticDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;,
        Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isOpen:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ProfileBean;",
            ">;"
        }
    .end annotation
.end field

.field private onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;

.field private swipelayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ProfileBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/ProfileBean;>;"
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->isOpen:Z

    .line 30
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->list:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->isOpen:Z

    return p1
.end method

.method static synthetic access$702(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;
    .param p1, "x1"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->swipelayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    return-object p1
.end method


# virtual methods
.method public closeMenu()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->swipelayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    if-eqz v0, :cond_9

    .line 41
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->swipelayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 43
    :cond_9
    return-void
.end method

.method public fillValues(ILandroid/view/View;)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    move-result-object v0

    .line 86
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    .line 87
    .local v1, "holder":Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    .line 88
    .local v2, "s":Ljava/lang/String;
    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->indexStr:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->indexStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    :cond_23
    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    iget-boolean v4, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->isSelected:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v3

    new-instance v4, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$2;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;I)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    move-result-object v3

    new-instance v4, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$3;

    invoke-direct {v4, p0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$3;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;)V

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->addSwipeListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;)V

    .line 130
    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v3

    new-instance v4, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$4;

    invoke-direct {v4, p0, v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$4;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Lcom/delan/app/germanybluetooth/bean/ProfileBean;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public generateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    if-nez p2, :cond_18

    .line 72
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :cond_18
    return-object p2
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSwipeLayoutResourceId(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 66
    const v0, 0x7f0d00ac

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->isOpen:Z

    return v0
.end method

.method public notifyData(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ProfileBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/ProfileBean;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->list:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public setOnRightMenuListener(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;)V
    .registers 2
    .param p1, "onRightMenuListener"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;

    .line 80
    return-void
.end method
