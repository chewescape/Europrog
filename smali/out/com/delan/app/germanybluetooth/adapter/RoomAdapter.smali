.class public Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;
.super Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;
.source "RoomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;,
        Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isOpen:Ljava/lang/Boolean;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;

.field private swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;


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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->isOpen:Ljava/lang/Boolean;

    .line 29
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->list:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;)Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;

    return-object v0
.end method

.method static synthetic access$502(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->isOpen:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$602(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;
    .param p1, "x1"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    return-object p1
.end method


# virtual methods
.method public closeMenu()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    if-eqz v0, :cond_9

    .line 64
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->swipeLayout:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 67
    :cond_9
    return-void
.end method

.method public fillValues(ILandroid/view/View;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "roomName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    .line 87
    .local v0, "holder":Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;
    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->access$300(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$2;-><init>(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-static {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$3;

    invoke-direct {v3, p0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$3;-><init>(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;)V

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->addSwipeListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;)V

    .line 119
    return-void
.end method

.method public generateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-nez p2, :cond_18

    .line 77
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :cond_18
    return-object p2
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSwipeLayoutResourceId(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 71
    const v0, 0x7f0d00ac

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->isOpen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public notifyData(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->list:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public setOnRightMenuListener(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;)V
    .registers 2
    .param p1, "onRightMenuListener"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->onRightMenuListener:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;

    .line 124
    return-void
.end method

.method public setOpen(Z)V
    .registers 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->isOpen:Ljava/lang/Boolean;

    .line 60
    return-void
.end method
